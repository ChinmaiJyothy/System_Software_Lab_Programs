% {
int id=0,op=0,v=0;
% }

%%
[a-zA-Z0-9]+
[\+\-\*\/\=]
"(" v++';
")" v__;
.|\n;
%%

int main()
{
printf("Enter the expression\n");
yylex();
printf("\nCount of identifiers=%d and operators=%d",id,op);
if((op+1)==id && v==0)
printf("\nExpression is Valid\n");
else
printf("\nExpression is Invalid\n");
return 0;
}

