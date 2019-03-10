%{
    #include<stdio.h>
    int  v=0,c=0;
%}
vowel [aeiouAEIOU]
rem [a-zA-Z]
%%
{vowel} {v++;}
{rem} {c++;}
. {}
%%
void main(){
    printf("Enter string:");
    yylex();
    printf("Number of vowels : %d\nNumber of consonants : %d\n",v,c);
}
int yywrap(){
    return 1;
}