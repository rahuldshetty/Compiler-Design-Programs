%{
    #include<stdio.h>
    #include<stdlib.h>
    int count=0;
%}
%token NL S IF ID NUM RELOP
%%
s : if_stmt NL {printf("No.of nested if : %d\n",count);exit(0);}
;
if_stmt : IF  '(' cond ')' '{' if_stmt '}' {count++;}
| S 
;
cond : X RELOP X 
;
X : ID 
| NUM
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
