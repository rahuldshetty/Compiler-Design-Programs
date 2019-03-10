%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token NL A B
%%
stmt : exp NL {printf("Valid\n");exit(0);}
;
exp : A exp B
|
;
%%
void main()
{
    printf("Enter expression:");
    yyparse();
}
int yyerror(){
    printf("Invalid");
    exit(0);
}

