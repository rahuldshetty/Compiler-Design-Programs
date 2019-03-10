%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%left '+' '-'
%left '*' '/'
%token NL NUM 
%%
s : exp NL {printf("Value of expression : %d\n",$1);exit(0);}  
;
exp : exp '+' exp   {$$ = $1 + $3;}
| exp '-' exp   {$$ = $1 - $3;}
|exp '*' exp   {$$ = $1 * $3;}
|exp '/' exp   { if($3==0){printf("Divide by zero Error.\n");exit(0);}   $$ = $1 / $3;}
| '(' exp ')' {$$ = $2;}
| NUM {$$=$1;}
;
%%
void main(){
    printf("Enter expression:\n");
    yyparse();
}
int yyerror(){
    printf("Invalid Expression");
    exit(0);
}