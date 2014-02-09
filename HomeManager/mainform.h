//---------------------------------------------------------------------------

#ifndef mainformH
#define mainformH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TMainWindow : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu1;
        TMenuItem *Fjl1;
        TMenuItem *Kilps1;
        TMenuItem *TzsAdatok1;
        TMenuItem *Kiadsok1;
        void __fastcall Kilps1Click(TObject *Sender);
        void __fastcall Kiadsok1Click(TObject *Sender);

private:	// User declarations
public:		// User declarations
        __fastcall TMainWindow(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainWindow *MainWindow;
//---------------------------------------------------------------------------
#endif
