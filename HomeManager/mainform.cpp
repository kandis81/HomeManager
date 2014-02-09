//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "version.h"
#include "mainform.h"
#include "charges.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainWindow *MainWindow;
//---------------------------------------------------------------------------
__fastcall TMainWindow::TMainWindow(TComponent* Owner)
        : TForm(Owner)
{
   this->Caption= "Home Manager " VERSION;
}
//---------------------------------------------------------------------------
void __fastcall TMainWindow::Kilps1Click(TObject *Sender)
{
   MainWindow->Close();
}
//---------------------------------------------------------------------------



void __fastcall TMainWindow::Kiadsok1Click(TObject *Sender)
{
   InOutBoundMain->Visible=true;
}
//---------------------------------------------------------------------------

