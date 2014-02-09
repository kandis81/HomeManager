//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("HomeManager.res");
USEFORM("mainform.cpp", Form1);
USEFORM("charges.cpp", Form2);
USEFORM("chadd.cpp", Form3);
USEUNIT("dbservice.cpp");
USEUNIT("charges_service.cpp");
USE("charges_service.h", File);
USEUNIT("list.cpp");
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TForm1), &Form1);
                 Application->CreateForm(__classid(TForm2), &Form2);
                 Application->CreateForm(__classid(TForm3), &Form3);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
