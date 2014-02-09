
#ifndef DBSERVICE
#define DBSERVICE

#include <Classes.hpp>

class DbService
{
   public:

      static int isMemeber(const AnsiString block[], const AnsiString str);
      static AnsiString getFirstDayOfMonth(TDateTime date);
      static AnsiString getFirstDayOfNextMonth(TDateTime date);
      static AnsiString getFirstDayOfPrevMonth(TDateTime date);

      static TDateTime getDate_LastDayOfMonth(TDateTime date);
      static TDateTime getDate_FirstDayOfMonth(TDateTime date);

      enum ChargeTypes
      {
         ctUnknown= -1,

         ctBill,
         ctRegBill,
         ctShop,
         ctFuel,
         ctDiff,
         ctPayment,

         ctCount
      };

      static const AnsiString ctNames[ctCount + 1];
};

typedef DbService Ds;

#endif

