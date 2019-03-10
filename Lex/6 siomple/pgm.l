%{
    #include<stdio.h>
    int isCompound=0;    
%}
%%
[ \n\t]+[aA][nN][dD][ \n\t]+ {isCompound=1;}
[ \n\t]+[oO][rR][ \n\t]+ {isCompound=1;}
[ \n\t]+[bB][uU][tT][ \n\t]+ {isCompound=1;}
. {}
\n {}
%%
void main(){
    printf("Enter string:");
    yylex();
    isCompound==1?printf("\nCompound Statement\n") : printf("\nSimple Statment\n");
}
int yywrap(){
    return 1;
}