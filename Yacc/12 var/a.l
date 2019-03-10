%{
    #include "y.tab.h"
%}
%option noyywrap
%%
\n { return NL;}
[a-zA-Z] {return LETTER;}
[0-9] {return DIGIT;}
"_" {return UNDERSCORE;}
. {return yytext[0];}
