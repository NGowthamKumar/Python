%{
#include<stdio.h>
%}
%token NUMBER
%left '+'
%right '*'
%left '-'
%left '/'
%%
start: E {printf("%d",$$);}
E: E '+' E {$$=$1+$3;}
| E '*' E {$$=$1*$3;}
| E '-' E {$$=$1-$3;}
| E '/' E {$$=$1/$3;}
|'(' E ')' {$$=$2;}
| NUMBER {$$=$1;}
;
%%
void main(){
printf("\n Enter the Arithmetic Expression:\n");
if(yyparse()==0)
printf("\nValid Expression.\n");
}
yyerror(){
  printf("Invalid Expr.\n");}
