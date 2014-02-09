#ifndef __CHARGES_SERVICE_H__
#define __CHARGES_SERVICE_H__

class List
{
   public:

      typedef void (*delFct)(void*);

      struct Node
      {
         Node* prev;
         Node* next;

         void* item;
      };

      List();
      virtual ~List(){ freeAll(); };

      virtual void* append(void* i);
      virtual void* insert(void* i);

      virtual void* getFirst();
      virtual void* getNext();
      virtual void* getCurrent();

      virtual void freeAll(delFct= 0);

   protected:

      Node* __insert(Node* ptr, void* i);
      Node* __append(Node* ptr, void* i);
      void __remove(Node* ptr, delFct= 0);

      Node *first,
           *last,
           *current;
      int count;
};

class CHList : public List
{
   public:

      typedef int Charge;

      Charge* First() { return (Charge*) getFirst(); }
      Charge* Next() { return (Charge*) getNext(); }
      Charge* Current() { return (Charge*) getCurrent(); }

      void clean() { freeAll(&delCharge); }

      void add(int val);

   protected:

      static void delCharge(void* p) { delete (Charge*) p; }
};

class CacheCalculator
{
   public:

      CacheCalculator();

      void clear();

      void addCharge(int val, int isInBound);
      void setPrevRes(int val);

   protected:

//      CHList inbound,   // Inbound charges
//             outbound;  // Outbound charges
      int prevRes;      // Prev Month missing or more

      int allIn;
      int allOut;
};

#endif