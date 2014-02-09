
#include "charges_service.h"

//-------------------------------------------------------------------
// CHList
//-------------------------------------------------------------------

void CHList::add(int val)
{
   Charge* p= new Charge;

   *p= val;

   append(p);
}

//-------------------------------------------------------------------
// CacheCalculator
//-------------------------------------------------------------------

CacheCalculator::CacheCalculator()
{
}

/*int CacheCalculator::init(TmySQLDatabase* db)
{
   this->cacheWhere.Active= false;
   this->cache.Active= false;
   this->actMonth.Active= false;

   conn= db;
}*/

