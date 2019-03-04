%{
#include<stdio.h>
int i=0;
%}
%token ID
%token NUM
%left '*'
%left '/'
%left '+'
%left '-'
%%
start: ID {$$=$1;printf("Valid id %d",$1);}
| expr {printf("Result of expression is: %d\n",$$);}
;
expr: expr '+' term {$$=$1+$3;i=i+1;printf("Next tree node: %d %d %c %d Value:%d\n",i,$1,'+',$3,$$);}
| expr '-' term {$$=$1-$3;i=i+1;printf("Next tree node: %d %d %c %d Value:%d\n",i,$1,'-',$3,$$);}
| term {$$=$1;}
;
term: term '*' factor {$$=$1*$3;i=i+1;printf("Next tree node: %d %d %c %d value:%d\n",i,$1,'*',$3,$$);}
| term '/' factor {$$=$1/$3;i=i+1;printf("Next tree node: %d %d %c %d value:%d\n",i,$1,'/',$3,$$);}
| factor {$$=$1;}
;
factor: NUM {$$=$1;printf("Leaf node: %d\n",$1);}
| '(' expr ')' {$$=$2;}
;
%%
void main()
{
printf("\nEnter Expression :\n");
yyparse();
}
yyerror()
{
printf("Invalid Expression\n");
}
