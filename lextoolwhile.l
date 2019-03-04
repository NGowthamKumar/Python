%{ #include<stdio.h>
%}
delim [\t\n%d]
ws {delim}+
semi [\;]
spec1 [\( | \{]
spec2 [\) | \}]
letter [A-Za-z]
digit [0-9]
inc {letter}\++
id {letter}({letter}|{digit})*
num {digit}+(\.{digit}+)?(E[+\-]?{digit}+)?
%%
{ws} {}
while {printf("while \t\t Keyword\n");}
"printf" {printf("Print \n");}
"<" { printf("%s \t\t Less than\n",yytext);}
"<=" { printf("%s \t\t Less than or Equal\n",yytext);}
"=" {printf("%s \t\t Equal \n",yytext);}
"<>" {printf("%s \t\t Not Equal \n",yytext);}
">" {printf("%s \t\t Greater\n",yytext);}
">=" { printf("%s \t\t Greater than or Equal\n",yytext); }
" " {printf("Space \n");}
{spec1} {printf("Open\t\t %s \n",yytext);}
{spec2} {printf("Close\t\t %s \n",yytext);}
{semi} {printf("SEMICOLON\t %s \n",yytext);}
{inc} {printf("INCREMENT BY ONE\n");}
{digit} {printf("CONSTANT \t %s\n",yytext);}
{num} {printf("NUMBER \t\t%s \n",yytext);}
{id} {printf("IDENTIFER \t%s\n",yytext);}
. {}
%%
int main()
{
yylex();
return(0);
}
int yywrap()
{
  return 1;
}
