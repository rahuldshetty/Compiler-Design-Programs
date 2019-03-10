%{
    #include<stdio.h>
    int r=0,p=0;
%}
%%
"printf"  {p++;fprintf(yyout,"writef");}
"scanf"  {r++;fprintf(yyout,"readf");}
%%
void main(int argc,char*argv[])
{
    if(argc!=3)
    {
        printf("Invalid Argument\n");
        exit(0);
    }
    yyin=fopen(argv[1],"r");
    yyout=fopen(argv[2],"w");
    yylex();
    printf("No.of printf statments:%d\n",p);
    printf("No.of scanf statments:%d\n",r); 
}
int yywrap(){
    return 1;
}
