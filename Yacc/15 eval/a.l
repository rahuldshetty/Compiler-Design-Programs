%{
    #include"y.tab.h"
%}
%option noyywrap
%%
[0-9]+ {yylval= atoi(yytext); return NUM; }
\n {return NL;}
. {return yytext[0];}
