
#include "charges_service.h"

List::List()
{
   first= last= current= 0;
   count= 0;
}

List::Node* List::__insert(Node* ptr, void* i)
{
   Node* n= new Node();
   n->item= i;
   n->next= ptr;
   n->prev= ptr ? ptr->prev : 0;

   if (!ptr)
      return n;

   ptr->prev= n;

   return n;
}

List::Node* List::__append(Node* ptr, void* i)
{
   Node* n= new Node();
   n->item= i;
   n->prev= ptr;
   n->next= ptr ? ptr->next : 0;

   if (!ptr)
      return n;

   ptr->next= n;

   return n;
}

void List::__remove(Node* ptr, delFct fct)
{
   if (!ptr)
      return;

   if (fct)
      (*fct)(ptr->item);

   Node* prev= ptr->prev;
   Node* next= ptr->next;

   delete ptr;

   if (next)
      next->prev= prev;

   if (prev)
      prev->next= next;
}

void* List::insert(void* i)
{
   current= __insert(current, i);

   if (count <= 0)
      last= first= current;

   count+= 1;

   return getCurrent();
}

void* List::append(void* i)
{
   current= __append(current, i);

   if (count <= 0)
      last= first= current;

   count+= 1;

   return getCurrent();
}

void* List::getFirst()
{
   current= first;

   return getCurrent();
}

void* List::getNext()
{
   current= current ? current->next : 0;

   return getCurrent();
}

void* List::getCurrent()
{
   return current ? current->item : 0;
}

