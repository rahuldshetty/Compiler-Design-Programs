%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token ID NUM NL
%left '+' '-'
%left '*' '/'
%% 
stm : exp NL {printf("Valid Expression");exit(0);}
;
exp : exp '+' exp 
| exp '-' exp 
| exp '*' exp 
| exp '/' exp 
| '('exp')' 
| ID  
| NUM 
;
%%
void main()
{
    printf("Enter expression:");
    yyparse();
}
int yyerror()
{
    printf("Invalid");
    exit(0);
}

