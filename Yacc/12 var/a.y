%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token NL LETTER DIGIT UNDERSCORE
%%
stmt : exp NL {printf("Valid Variable name.\n");exit(0);}
;
exp : LETTER OTHER
;
OTHER : LETTER OTHER
|   DIGIT OTHER
| UNDERSCORE OTHER
|
;
%%
void main(){
    printf("Enter expression:");
    yyparse();
}
int yyerror(){
    printf("Invalid");
    exit(0);
}
