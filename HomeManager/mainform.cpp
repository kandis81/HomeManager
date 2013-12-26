//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "version.h"
#include "mainform.h"
#include "charges.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
   this->Caption= "Home Manager " VERSION;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Kilps1Click(TObject *Sender)
{
   Form1->Close();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Kiadsok1Click(TObject *Sender)
{
   Form2->Visible=true;
}
//---------------------------------------------------------------------------

