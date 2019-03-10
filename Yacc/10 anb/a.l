%{
    #include "y.tab.h"
%}
%option noyywrap
%%
[aA] {return A;}
[bB] {return B;}
\n {return NL;}
. {return yytext[0];}
