%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B
%%
input:s '\n' {printf("Successful Grammar \n");exit(0);}
s: A M B| B
M: A M | ;
%%

int main()
{
printf("Enter a String\n");
yyparse();
}

intyyerror()
{
printf("Error \n");
exit(0);
}
