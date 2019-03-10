%{
    #include<stdio.h>
    #include<stdlib.h>
    int c=0,w=0,s=0,l=1;
%}
WORD  [^ \n,\t\.:]+
BLANK [ ]
EOL [\n]
%%
{WORD} {w++;c+=yyleng;}
{BLANK} {s++;}
{EOL} {l++;}
. {}
%%
void main(int argc,char *argv[]){
    if(argc!=2)
    {
        printf("Invalid arguments");
        exit(0);
    }
    yyin=fopen(argv[1],"r");
    yylex();
    printf("S:%d\nC:%d\nW:%d\nNL:%d\n",s,c,w,l);
}
int yywrap(){
    return 1;
}