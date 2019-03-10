%{
    #include<stdio.h>
    #include<string.h>
    int valid = 1 ,top=-1,l=0,j=0;
    char OP[10][10],VAL[10][10],a[100],prev='',i;
%}
%%
"("|"{"|"[" {
    if(prev!='i'    )
        top++;a[top]=yytext[0];}
    else{
        valid=0;
        return;
    }
")" {
    if(a[top]!='('){valid=0;return;}
    else top--;
}
"}" {
    if(a[top]!='{'){valid=0;return;}
    else top--;
}
"]" {
    if(a[top]!='['){valid=0;return;}
    else top--;
}

"+"|"-"|"*"|"/" {
    if(prev=='+'||prev=='-'||prev=='*'||prev=='/')
    {
        valid=0;
        return;
    }
    prev=yytext[0];
    strcpy(OP[l++],yytext);
}

[0-9]+|[a-zA-Z][a-zA-Z0-9]* {
    prev='i';
    strcpy(VAL[j++],yytext);
}

. {}
\n {}
%%
void main(){
    printf("Enter expression:");
    yylex();
    if(top==-1 && valid==1 && j-l == 1)
    {
        printf("Valid\n");
        printf("Operators:\n");
        for(i=0;i<l;i++)printf("%s\n",OP[i]);
        printf("Operands:\n");
        for(i=0;i<j;i++)printf("%s\n",VAL[i]);
        printf("No. of operators:%d\nNo.of operands:%d\n",l,j);
    }
    else{
        printf("Invalid expression\n");
    }
}
int yywrap(){
    return 1;
}