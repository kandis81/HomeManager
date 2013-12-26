//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "charges.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "mySQLDbTables"
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
        : TForm(Owner)
{
//   TDateTime tmp;
//   tmp= EncodeDate((Word)StrToInt("2008"),
//                   (Word)StrToInt("03"),
//                   (Word)StrToInt("01"));
//   MonthCalendar1->Date= tmp;
   MonthCalendar1->Date= TDateTime::CurrentDateTime();


   refresh();
}
//---------------------------------------------------------------------------

void TForm2::refresh()
{
   AnsiString begsp= Ds::getFirstDayOfMonth(this->MonthCalendar1->Date),
              endsp= Ds::getFirstDayOfNextMonth(this->MonthCalendar1->Date);

   this->HM_CHQBill->Active= false;
   this->HM_CHQBill->ParamByName("begsp")->SetData(begsp.c_str());
//   this->HM_CHQBill->ParamByName("endsp")->SetData(endsp.c_str());
   this->HM_CHQBill->Active= true;

   this->HM_CHQRegularBill->Active= false;
   this->HM_CHQRegularBill->ParamByName("begsp")->SetData(begsp.c_str());
//   this->HM_CHQRegularBill->ParamByName("endsp")->SetData(endsp.c_str());
   this->HM_CHQRegularBill->Active= true;

   this->HM_CHQShoping->Active= false;
   this->HM_CHQShoping->ParamByName("begsp")->SetData(begsp.c_str());
//   this->HM_CHQShoping->ParamByName("endsp")->SetData(endsp.c_str());
   this->HM_CHQShoping->Active= true;

   this->HM_CHQFuel->Active= false;
   this->HM_CHQFuel->ParamByName("begsp")->SetData(begsp.c_str());
//   this->HM_CHQFuel->ParamByName("endsp")->SetData(endsp.c_str());
   this->HM_CHQFuel->Active= true;

   this->HM_CHQInbound->Active= false;
   this->HM_CHQInbound->ParamByName("begsp")->SetData(begsp.c_str());
//   this->HM_CHQInbound->ParamByName("endsp")->SetData(endsp.c_str());
   this->HM_CHQInbound->Active= true;
}

void __fastcall TForm2::MonthCalendar1Click(TObject *Sender)
{
   refresh();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button5Click(TObject *Sender)
{
   Form2->Close();
}
//---------------------------------------------------------------------------


void __fastcall TForm2::Button2Click(TObject *Sender)
{
   Form3->init(Ds::ctBill, this->MonthCalendar1->Date);
   Form3->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button1Click(TObject *Sender)
{
   Form3->init(Ds::ctRegBill, this->MonthCalendar1->Date);
   Form3->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button4Click(TObject *Sender)
{
   Form3->init(Ds::ctShop, this->MonthCalendar1->Date);
   Form3->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button3Click(TObject *Sender)
{
   Form3->init(Ds::ctFuel, this->MonthCalendar1->Date);
   Form3->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button6Click(TObject *Sender)
{
   Form3->init(Ds::ctPayment, this->MonthCalendar1->Date);
   Form3->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormActivate(TObject *Sender)
{
   this->HM_CHQInbound->Refresh();
   this->HM_CHQBill->Refresh();
   this->HM_CHQRegularBill->Refresh();
   this->HM_CHQShoping->Refresh();
   this->HM_CHQFuel->Refresh();
}
//---------------------------------------------------------------------------

