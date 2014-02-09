//---------------------------------------------------------------------------

#ifndef chaddH
#define chaddH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "mySQLDbTables.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Mask.hpp>

#include "dbservice.h"

//---------------------------------------------------------------------------
class TInOutBoundEdit : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TmySQLTable *HM_TCharges;
        TDataSource *HM_DSTCharges;
        TDBEdit *DBEdit1;
        TDBEdit *DBEdit2;
        TLabel *Label6;
        TCheckBox *CheckBox1;
        TDateTimePicker *DateTimePicker1;
        TButton *Button1;
        TmySQLQuery *HM_QCharges;
        TDataSource *HM_DSQCharges;
        TButton *Button2;
        TDBEdit *HM_EEndSp;
        TDBEdit *HM_EBegSp;
        TDBEdit *HM_EChType;
        TDBEdit *HM_EInsSp;
        TDBEdit *HM_EIsInbound;
        TButton *Button3;
        TmySQLTable *HM_TChargesDelete;
        TDataSource *HM_DSTChargesDelete;
        TDBEdit *HM_EDelEndSp;
        TDBEdit *HM_EDelBegSp;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall CheckBox1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall DBGrid1CellClick(TColumn *Column);
        void __fastcall Button3Click(TObject *Sender);
   private: // User declarations

      Ds::ChargeTypes ChargeType;
      TDateTime      DefaultFrom;
      TDateTime      DefaultTo;

   public: // User declarations
        __fastcall TInOutBoundEdit(TComponent* Owner);
        void init(Ds::ChargeTypes cht, TDateTime ref);
protected:
        void refresh();
};
//---------------------------------------------------------------------------
extern PACKAGE TInOutBoundEdit *InOutBoundEdit;
//---------------------------------------------------------------------------
#endif
