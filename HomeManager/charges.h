//---------------------------------------------------------------------------

#ifndef chargesH
#define chargesH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <Mask.hpp>
#include <ComCtrls.hpp>

#include "dbservice.h"
#include "mySQLDbTables.hpp"
#include "chadd.h"
//---------------------------------------------------------------------------
class TInOutBoundMain : public TForm
{
   friend class TInOutBoundEdit;
__published:	// IDE-managed Components
        TMonthCalendar *MonthCalendar1;
        TDBGrid *DBGrid1;
        TLabel *Label1;
        TButton *Button1;
        TDBGrid *DBGrid2;
        TLabel *Label2;
        TDBGrid *DBGrid3;
        TLabel *Label3;
        TDBGrid *DBGrid4;
        TLabel *Label4;
        TButton *Button5;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TDBText *DIFF_PrevMonth;
        TDataSource *DSRegularBill;
        TDataSource *DSFuel;
        TDataSource *DSBill;
        TDataSource *DSShopping;
        TmySQLDatabase *HM_CHDB;
        TLabel *Label9;
        TButton *Button2;
        TButton *Button3;
        TButton *Button4;
        TButton *Button6;
        TDBGrid *DBGrid5;
        TmySQLQuery *HM_CHQInbound;
        TDataSource *HM_CHDSInbound;
        TmySQLQuery *HM_CHQBill;
        TmySQLQuery *HM_CHQRegularBill;
        TmySQLQuery *HM_CHQShoping;
        TmySQLQuery *HM_CHQFuel;
        TmySQLQuery *HM_QCache;
        TLabel *Label8;
        TDBText *SUM_Bill;
        TLabel *Label10;
        TDBText *SUM_Shopping;
        TLabel *Label11;
        TDBText *SUM_RegularBill;
        TLabel *Label12;
        TDBText *SUM_Fuel;
        TmySQLQuery *HM_CHQSUM_Bill;
        TDataSource *DSSUM_Bill;
        TmySQLQuery *HM_CHQSUM_Shopping;
        TDataSource *DSSUM_Shopping;
        TmySQLQuery *HM_CHQSUM_RegularBill;
        TDataSource *DSSUM_RegularBill;
        TmySQLQuery *HM_CHQSUM_Fuel;
        TDataSource *DSSUM_Fuel;
        TDBText *SUM_Inbound;
        TmySQLQuery *HM_CHQSUM_Inbound;
        TDataSource *DSSUM_Inbound;
        TDBText *DIFF_ActMonth;
        TLabel *Label13;
        TLabel *Label14;
        TmySQLQuery *HM_CHQSUM_Outbund;
        TDataSource *DSSUM_Outbund;
        TDBText *SUM_Outbound;
        TmySQLQuery *HM_CHQDiff_PrevMonth;
        TDataSource *DSDiff_PrevMonth;
        TmySQLQuery *HM_CHQDiff_ActMonth;
        TDataSource *DSDiff_ActMonth;
        TmySQLTable *HM_CHTDiff_ActMonth;
        TDataSource *DSDiff_ActMonthE;
        TDBGrid *Diff_Grid;
        TDBText *Diff_ChId;
        void __fastcall MonthCalendar1Click(TObject *Sender);
        void __fastcall Button5Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button4Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall Button6Click(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TInOutBoundMain(TComponent* Owner);
protected:
        virtual void refresh();
        virtual void refresh(TmySQLQuery* q, AnsiString& begsp);
        virtual void refreshDiff(AnsiString& begsp);
};
//---------------------------------------------------------------------------
extern PACKAGE TInOutBoundMain *InOutBoundMain;
//---------------------------------------------------------------------------
#endif
