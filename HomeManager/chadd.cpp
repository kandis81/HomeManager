//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "chadd.h"
#include "charges.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "mySQLDbTables"
#pragma resource "*.dfm"
TInOutBoundEdit *InOutBoundEdit;
//---------------------------------------------------------------------------
__fastcall TInOutBoundEdit::TInOutBoundEdit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TInOutBoundEdit::Button1Click(TObject *Sender)
{
   this->HM_TCharges->Cancel();
   InOutBoundMain->FormActivate(this);
   InOutBoundMain->refresh();
   InOutBoundEdit->Close();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundEdit::CheckBox1Click(TObject *Sender)
{
    this->DateTimePicker1->Enabled= this->CheckBox1->Checked;
}
//---------------------------------------------------------------------------


void TInOutBoundEdit::init(Ds::ChargeTypes cht, TDateTime ref)
{
   TDateTime tmp;
   AnsiString tmpStr;

   this->ChargeType= cht;

   switch ((int) cht)
   {
      case Ds::ctRegBill :
         this->Label3->Caption= "Rendszeres kiadások";
         this->CheckBox1->Visible= true;
         this->CheckBox1->Checked= false;
         this->DateTimePicker1->Visible= true;
         break;

      case Ds::ctShop    :
         this->Label3->Caption= "Vásárlások";
         this->CheckBox1->Visible= false;
         this->CheckBox1->Checked= false;
         this->DateTimePicker1->Visible= false;
         break;

      case Ds::ctFuel    :
         this->Label3->Caption= "Tankolások";
         this->CheckBox1->Visible= false;
         this->CheckBox1->Checked= false;
         this->DateTimePicker1->Visible= false;
         break;

      case Ds::ctPayment :
         this->Label3->Caption= "Bevételek";
         this->CheckBox1->Visible= true;
         this->CheckBox1->Checked= false;
         this->DateTimePicker1->Visible= true;
         break;

      case Ds::ctBill    :
      default            :
         this->Label3->Caption= "Csekkek";
         this->ChargeType= Ds::ctBill;
         this->CheckBox1->Visible= false;
         this->CheckBox1->Checked= false;
         this->DateTimePicker1->Visible= false;
         break;
   }

   tmpStr= ref.FormatString("mm");

   for (tmp= ref; tmp.FormatString("mm") == tmpStr; tmp-= 1);
   tmp+= 1;
   this->DefaultFrom= tmp;

   for (tmp= ref; tmp.FormatString("mm") == tmpStr; tmp+= 1);
   tmp-= 1;
   this->DefaultTo= tmp;


   this->Label4->Caption= this->DefaultFrom.FormatString("yyyy-mm-dd");

   this->HM_QCharges->Active= false;
   this->HM_QCharges->ParamByName("begsp")->SetData(this->DefaultFrom.FormatString("yyyy-mm-dd").c_str());
   this->HM_QCharges->ParamByName("chtype")->SetData(Ds::ctNames[this->ChargeType].c_str());
   this->HM_QCharges->Active= true;

   this->Button3->Enabled= false;

   this->refresh();
}

void TInOutBoundEdit::refresh()
{
   this->HM_TCharges->Cancel();
   this->HM_TCharges->Append();

   switch ((int) this->ChargeType)
   {
      case Ds::ctShop    : this->DBEdit1->SetTextBuf("Vásárlás"); break;
      case Ds::ctFuel    : this->DBEdit1->SetTextBuf("Tankolás"); break;
      case Ds::ctPayment : this->DBEdit1->SetTextBuf("Bevétel");  break;
      case Ds::ctBill    :
      case Ds::ctRegBill :
      default            : this->DBEdit1->SetTextBuf("Csekk"); break;
   }

   this->DBEdit2->SetTextBuf("0");
   this->DateTimePicker1->DateTime= this->DefaultTo;

   this->HM_QCharges->Refresh();
}

void __fastcall TInOutBoundEdit::Button2Click(TObject *Sender)
{
   // Bugfix: a melléütések végett ;)
   if (this->DBEdit2->Text.IsEmpty())
      return;

   this->HM_EChType->SetTextBuf(Ds::ctNames[this->ChargeType].c_str());
   this->HM_EIsInbound->SetTextBuf(this->ChargeType == Ds::ctPayment ? "1" : "0");
   this->HM_EInsSp->SetTextBuf(TDateTime::CurrentDateTime().FormatString("yyyy.mm.dd. hh:nn:ss").c_str());
   this->HM_EBegSp->SetTextBuf(this->DefaultFrom.FormatString("yyyy.mm.dd.").c_str());

   switch ((int) this->ChargeType)
   {
      case Ds::ctRegBill :
      case Ds::ctPayment :
         if (!this->CheckBox1->Checked) break;

         this->HM_EEndSp->SetTextBuf(this->DateTimePicker1->Date.FormatString("yyyy.mm.dd.").c_str());
         break;

      case Ds::ctBill    :
      case Ds::ctShop    :
      case Ds::ctFuel    :
      default            :
         this->HM_EEndSp->SetTextBuf(this->DefaultTo.FormatString("yyyy.mm.dd.").c_str());
   }


   this->HM_TCharges->Post();
   this->refresh();

   this->DBEdit2->SetFocus();

   if (this->CheckBox1->Visible &&
       this->CheckBox1->Checked)
   {
      this->CheckBox1->Checked= false;
      this->DateTimePicker1->Enabled= false;
   }
}
//---------------------------------------------------------------------------


void __fastcall TInOutBoundEdit::DBGrid1CellClick(TColumn *Column)
{
   this->Button3->Enabled= true;
}
//---------------------------------------------------------------------------


void __fastcall TInOutBoundEdit::Button3Click(TObject *Sender)
{
   TDateTime tmp;

   if (this->HM_EDelBegSp->Text == this->DefaultFrom.FormatString("yyyy.mm.dd") ||
       this->HM_EDelBegSp->Text == this->DefaultFrom.FormatString("yyyy.mm.dd."))
   {
      this->HM_TChargesDelete->Delete();
      this->HM_QCharges->Refresh();

      return;
   }

   if (this->HM_EDelEndSp->Text.IsEmpty())
   {
      tmp= this->DefaultFrom;
      tmp-= 1;

      this->HM_TChargesDelete->Edit();
      this->HM_EDelEndSp->SetTextBuf(tmp.FormatString("yyyy.mm.dd.").c_str());
      this->HM_TChargesDelete->Post();

      this->HM_QCharges->Refresh();

      return;
   }
}
//---------------------------------------------------------------------------

