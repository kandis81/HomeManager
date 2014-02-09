//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("HomeManager.res");
USEFORM("mainform.cpp", MainWindow);
USEFORM("charges.cpp", InOutBoundMain);
USEFORM("chadd.cpp", InOutBoundEdit);
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
                 Application->CreateForm(__classid(TMainWindow), &MainWindow);
                 Application->CreateForm(__classid(TInOutBoundMain), &InOutBoundMain);
                 Application->CreateForm(__classid(TInOutBoundEdit), &InOutBoundEdit);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
