%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token NL A B
%%
stmt : exp NL {printf("Valid Expression\n");exit(0);}
;
exp : A A A A A A A A A A a B
;
a : A a 
|
; 
%%
void main(){
    printf("Enter expression:");
    yyparse();
}
int yyerror(){
    printf("Invalid expression.");
    exit(0);
}