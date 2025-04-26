%{
#include "parser.tab.h"
%}

%%

"invoca"          { return INVOCA; }
"fruta"           { return FRUTA; }
"ritual"          { return RITUAL; }
"revela"          { return REVELA; }
"gato"            { return GATO; }
"preto"           { return PRETO; }
"muahaha!"        { return MUAHAHA; }
"com"             { return COM; }
"envenenada"      { return ENVENENADA; }
"ciclos"          { return CICLOS; }

[0-9]+             { yylval.numero = atoi(yytext); return NUMERO; }
[a-zA-Z_]+         { yylval.str = strdup(yytext); return IDENTIFICADOR; }
\"([^\"\n])*\"     { yylval.str = strdup(yytext); return FRASE; }

";"               { return PONTO_E_VIRGULA; }
[ \\t\\n\\r]+      { /* ignorar espaços */ }
.                 { /* ignorar qualquer outro símbolo estranho */ }

%%

int yywrap() { return 1; }
