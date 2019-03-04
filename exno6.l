%{
#include<stdio.h>
#include"y.tab.h"
extern yylval;
%}
%%
[_]?[a-zA-Z_][a-zA-z0-9_]* {yylval=yytext[0];return ID;}
[0-9] {yylval=atoi(yytext);return NUM;}
[+-] {return *yytext;}
[*/] {return *yytext;}
[\t]+;
[()] {return *yytext;}
[\n] {return 0;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}
