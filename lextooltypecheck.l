%{
#include<stdio.h>
%}
pos  [+]?[0-9]+
neg  [-][0-9]+
fp  [+]?[0-9]?\.[0-9]+
fn  [-]?[0-9]?\.[0-9]+
arr  [[a-zA-Z]+[0-9]*]
cha  [a-zA-Z]
str  [a-zA-Z][a-zA-Z]+
alphanum  [0-9a-zA-Z0-9]+
%%

"true" {printf("%s is a boolean",yytext);}
"false" {printf("%s is a boolean",yytext);}
{pos} {printf("%s is positive number",yytext);}
{neg} {printf("%s is negative number",yytext);}
{fp} {printf("%s is a positive float number",yytext);}
{fn} {printf("%s is a negative float number",yytext);}
{cha} {printf("%s is character",yytext);}
{str} {printf("%s is string",yytext);}
{alphanum} {printf("%s is alphanumeric",yytext);}
{arr} {printf("%s is an array",yytext);}
%%
int main()
{
yylex();
return 0;
}
int yywrap()
{
return 1;
}
