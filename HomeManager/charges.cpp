//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "charges.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "mySQLDbTables"
#pragma resource "*.dfm"
TInOutBoundMain *InOutBoundMain;
//---------------------------------------------------------------------------
__fastcall TInOutBoundMain::TInOutBoundMain(TComponent* Owner)
        : TForm(Owner)
{
//   TDateTime tmp;
//   tmp= EncodeDate((Word)StrToInt("2008"),
//                   (Word)StrToInt("03"),
//                   (Word)StrToInt("01"));
//   MonthCalendar1->Date= tmp;
   MonthCalendar1->Date= TDateTime::CurrentDateTime();

   this->HM_CHDB->Connect();

   this->HM_CHQInbound->Active= true;
//   this->HM_CHDSInbound->A true;
   this->HM_CHQBill->Active= true;
   this->HM_CHQRegularBill->Active= true;
   this->HM_CHQShoping->Active= true;
   this->HM_CHQFuel->Active= true;

   refresh();
}
//---------------------------------------------------------------------------

void TInOutBoundMain::refresh()
{
   AnsiString begsp= Ds::getFirstDayOfMonth(this->MonthCalendar1->Date),
              endsp= Ds::getFirstDayOfNextMonth(this->MonthCalendar1->Date);
   int difference= 0;

   refresh(this->HM_CHQBill, begsp);
   refresh(this->HM_CHQRegularBill,  begsp);
   refresh(this->HM_CHQShoping,  begsp);
   refresh(this->HM_CHQFuel,  begsp);
   refresh(this->HM_CHQInbound,  begsp);

   // Refresh Summary Objects
   refresh(this->HM_CHQSUM_Bill,  begsp);
   refresh(this->HM_CHQSUM_Shopping,  begsp);
   refresh(this->HM_CHQSUM_RegularBill,  begsp);
   refresh(this->HM_CHQSUM_Fuel,  begsp);
   refresh(this->HM_CHQSUM_Inbound,  begsp);
   refresh(this->HM_CHQSUM_Outbund,  begsp);

   // Refresh and Recalc Difference
   refreshDiff(begsp);

   if (!this->DIFF_PrevMonth->Field->AsString.IsEmpty())
      difference+= this->DIFF_PrevMonth->Field->AsInteger;

   if (this->SUM_Inbound->Field->AsInteger > 0)
      difference+= this->SUM_Inbound->Field->AsInteger;

   if (this->SUM_Outbound->Field->AsInteger > 0)
      difference-= this->SUM_Outbound->Field->AsInteger;

   if (this->Diff_ChId->Field->AsString.IsEmpty() ||
       this->DIFF_ActMonth->Field->AsInteger != difference)
   {
      enum FieldIndexes
      {
         fiId = 0,
         fiInsSp,
         fiBegSp,
         fiEndSp,
         fiIsInbound,
         fiChType,
         fiValue,
         fiDescription
      };

      if (this->Diff_ChId->Field->AsString.IsEmpty())
      {
         this->HM_CHTDiff_ActMonth->Insert();

         this->Diff_Grid->Fields[fiInsSp]->AsString= TDateTime::CurrentDateTime().FormatString("yyyy.mm.dd. hh:nn:ss");
         this->Diff_Grid->Fields[fiBegSp]->AsDateTime= Ds::getDate_FirstDayOfMonth(this->MonthCalendar1->Date);
         this->Diff_Grid->Fields[fiEndSp]->AsDateTime= Ds::getDate_LastDayOfMonth(this->MonthCalendar1->Date);
         this->Diff_Grid->Fields[fiIsInbound]->AsInteger= -1;
         this->Diff_Grid->Fields[fiChType]->AsString= Ds::ctNames[Ds::ctDiff];
         this->Diff_Grid->Fields[fiDescription]->AsString= "Calculated difference";
      }
      else if (this->Diff_Grid->Fields[fiId]->AsInteger == this->Diff_ChId->Field->AsInteger)
         this->HM_CHTDiff_ActMonth->Edit();

      this->Diff_Grid->Fields[fiValue]->AsInteger= difference;
      this->HM_CHTDiff_ActMonth->Post();

      refreshDiff(begsp);
   }
}

void __fastcall TInOutBoundMain::MonthCalendar1Click(TObject *Sender)
{
   refresh();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundMain::Button5Click(TObject *Sender)
{
   InOutBoundMain->Close();
}
//---------------------------------------------------------------------------


void __fastcall TInOutBoundMain::Button2Click(TObject *Sender)
{
   InOutBoundEdit->init(Ds::ctBill, this->MonthCalendar1->Date);
   InOutBoundEdit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundMain::Button1Click(TObject *Sender)
{
   InOutBoundEdit->init(Ds::ctRegBill, this->MonthCalendar1->Date);
   InOutBoundEdit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundMain::Button4Click(TObject *Sender)
{
   InOutBoundEdit->init(Ds::ctShop, this->MonthCalendar1->Date);
   InOutBoundEdit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundMain::Button3Click(TObject *Sender)
{
   InOutBoundEdit->init(Ds::ctFuel, this->MonthCalendar1->Date);
   InOutBoundEdit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundMain::Button6Click(TObject *Sender)
{
   InOutBoundEdit->init(Ds::ctPayment, this->MonthCalendar1->Date);
   InOutBoundEdit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TInOutBoundMain::FormActivate(TObject *Sender)
{
   this->HM_CHQInbound->Refresh();
   this->HM_CHQBill->Refresh();
   this->HM_CHQRegularBill->Refresh();
   this->HM_CHQShoping->Refresh();
   this->HM_CHQFuel->Refresh();
}
//---------------------------------------------------------------------------


void TInOutBoundMain::refresh(TmySQLQuery* q, AnsiString& begsp)
{
   q->Active= false;
   q->ParamByName("begsp")->SetData(begsp.c_str());
   q->Active= true;
}

void TInOutBoundMain::refreshDiff(AnsiString& begsp)
{
   AnsiString prevMonth= Ds::getFirstDayOfPrevMonth(this->MonthCalendar1->Date);

   this->HM_CHTDiff_ActMonth->Active= false;
   refresh(this->HM_CHQDiff_PrevMonth, prevMonth);
   refresh(this->HM_CHQDiff_ActMonth, begsp);
   this->HM_CHTDiff_ActMonth->Active= true;
}
