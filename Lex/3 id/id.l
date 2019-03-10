%{
    #include<stdio.h>
    int id=0;
%}
%%
[a-zA-Z][a-zA-Z0-9]* {id++;ECHO;printf("\n");}
. {}
\n {}
%% 
void main(int argc,char *argv[])
{
    if(argc!=2)
    {
        printf("Invalid");
        exit(0);
    }
    yyin = fopen(argv[1],"r");
    printf("Identifiers found:\n");
    yylex();
    printf("No. of Identifiers:%d\n",id);
}
int yywrap(){
    return 1;
}