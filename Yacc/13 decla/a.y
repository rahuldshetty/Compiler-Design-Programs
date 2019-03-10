%{
    #include<stdio.h>
%}
%token NL SP INT CHAR ID CM
%%
stmt : exp ';' NL  {printf("Valid");exit(0);}
;
exp : type SP LIST space
;
type : INT 
| CHAR
;
LIST : LIST space CM space ID 
| ID
;
space : SP |

;
%%
void main(){
    printf("Enter statement:");
    yyparse();
}
int yyerror(){
    printf("Invalid expression");
    exit(0);
}