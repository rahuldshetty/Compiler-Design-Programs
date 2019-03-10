%{
    #include"y.tab.h"
%}
%option noyywrap
%%
\n {return NL;}
[ \t]+ {return SP;}
"int" {return INT;}
"char" {return CHAR;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
"," {return CM;}
. {return yytext[0];}
