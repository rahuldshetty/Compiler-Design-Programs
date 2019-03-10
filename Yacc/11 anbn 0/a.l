%{
    #include "y.tab.h"
%}
%option noyywrap
%%
\n { return NL; }
[aA] {return A;}
[bB] {return B;}
. {return yytext[0];}
