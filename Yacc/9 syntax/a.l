%{
    #include "y.tab.h"
%}
%option noyywrap
%%
\n {return NL;}
[ ]*[0-9]+[ ]* {return NUM;}
[ ]*[a-zA-Z][a-zA-Z0-9]*[ ]* {return ID;}
. {return yytext[0];}
