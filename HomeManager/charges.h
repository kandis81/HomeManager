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
class TForm2 : public TForm
{
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
        TDBText *DBText1;
        TDBText *DBText2;
        TDBText *DBText3;
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
        __fastcall TForm2(TComponent* Owner);
protected:
        virtual void refresh();
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
