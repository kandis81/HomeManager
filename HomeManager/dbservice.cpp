
#include "dbservice.h"

int DbService::isMemeber(const AnsiString block[], const AnsiString str)
{
   for (int i= 0; !block[i].IsEmpty(); i++)
      if (block[i] == str)
         return i;

   return -1;
}

const AnsiString DbService::ctNames[ctCount + 1]=
{
   "BILL",
   "REGBILL",
   "SHOP",
   "FUEL",
   "DIFF",
   "PAYM",

   ""
};

AnsiString DbService::getFirstDayOfMonth(TDateTime date)
{
   return date.FormatString("yyyy-mm-01");
}

AnsiString DbService::getFirstDayOfNextMonth(TDateTime date)
{
   TDateTime tmp= date;

   AnsiString dMonth = tmp.FormatString("mm");

   for (; tmp.FormatString("mm") == dMonth; tmp+= 1);

   return tmp.FormatString("yyyy-mm-01");
}

AnsiString DbService::getFirstDayOfPrevMonth(TDateTime date)
{
   TDateTime tmp= date;

   AnsiString dMonth = tmp.FormatString("mm");

   for (; tmp.FormatString("mm") == dMonth; tmp-= 1);

   return tmp.FormatString("yyyy-mm-01");
}

TDateTime DbService::getDate_LastDayOfMonth(TDateTime date)
{
   TDateTime tmp= date;

   AnsiString dMonth = tmp.FormatString("mm");

   for (; tmp.FormatString("mm") == dMonth; tmp+= 1);

   tmp-=1;
   return tmp;
}

TDateTime DbService::getDate_FirstDayOfMonth(TDateTime date)
{
   TDateTime tmp= date;

   AnsiString dMonth = tmp.FormatString("mm");

   for (; tmp.FormatString("mm") == dMonth; tmp-= 1);

   tmp+=1;
   return tmp;
}


