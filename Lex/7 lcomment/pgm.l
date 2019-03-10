%{
    #include<stdio.h>
    int count=0;
%}
%s COMMENT
%%
"//".* {count++;}
"/*" {BEGIN COMMENT;}
<COMMENT>"*/" {BEGIN 0;count++;}
<COMMENT>\n {count++;}
<COMMENT>. {}
%%
void main(int argc,char*argv[])
{
    if(argc!=3)
    {
        printf("Invalid Arguments\n");
        exit(0);
    }
    yyin=fopen(argv[1],"r");
    yyout=fopen(argv[2],"w");
    yylex();
    printf("No.of comment lines:%d\n",count);
}
int yywrap(){
    return 1;
}