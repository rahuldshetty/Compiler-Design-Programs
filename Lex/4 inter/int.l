%{
    #include<stdio.h>
    int pn=0,nn=0,fpn=0,fnn=0;
%}
%%
[+]?[0-9]+ {pn++;}
[-][0-9]+ {nn++;}
[+]?[0-9]*"."[0-9]+ {fpn++;}
[-][0-9]*"."[0-9]+ {fnn++;}
. {}
\n {}
%%
void main(int argc,char *argv[])
{
    if(argc!=2){
        printf("Invalid\n");
        exit(0);
    }
    yyin=fopen(argv[1],"r");
    yylex();
    printf("Positive Integers:%d\nNegative Integers:%d\n",pn,nn);
    printf("Positive Fractions:%d\nNegative Fractions:%d\n",fpn,fnn);
}
int yywrap()
{
    return 1;
}
