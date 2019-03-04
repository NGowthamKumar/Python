#include<stdio.h>
#include<conio.h>
#define SIZE 1
int top=-1;
struct stack
{
  int val;
  char name[20];
}s[SIZE];



void push()
{
   if(top>=SIZE)
   {
      printf("\nNo space");

   }
   else
   {
      top=top+1;
      printf("\nEnter the var name & value:");
      scanf("%s%d",&s[top].name,&s[top].val);
   }
}


void pop()
{
   if(top<0)
   {
      printf("\nStack is empty");

   }
   else
   {
      printf("\nThe popped var is:%s  &val is:%d",s[top].name,s[top].val);
      top=top-1;
   }
}


void display()
{
   int i;
   for(i=top;i>=0;i--)
     printf("\nThe var is:%s  and value:%d",s[i].name,s[i].val);
}


void main()
{
  int c,tc=1,n,i;
  clrscr();
  printf("\n------------Implementation of stack------------");
  while(tc==1)
  {
    printf("\n1.push\n2.pop\n3.display\n");
    printf("\nEnter your choice:");
    scanf("%d",&c);
    switch(c)
    {
      case 1:printf("\nEnter no of elements to be pushed:");
	     scanf("%d",&n);
	     for(i=0;i<n;i++)
		push();
	     break;

      case 2:pop();
	     break;

      case 3:display();
	     break;

    }printf("\nDo you want to continue? (0 or 1)");
    scanf("%d",&tc);
  }
  getch();
}



