%{
    #include "y.tab.h"
%}
%option noyywrap
%%
\n {return NL;}
[sS][0-9]* {return S;}
[ \t]*"if"[ \t]* {return IF;}
[0-9]+ {return NUM;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
">"|"<"|">="|"<="|"=="|"!=" {return RELOP;}
. {return yytext[0];}
