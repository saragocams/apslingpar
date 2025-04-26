%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);

#define YYDEBUG 1
extern int yydebug;
%}


%union {
    int numero;
    char *str;
}

%token <str> IDENTIFICADOR
%token <str> FRASE
%token <numero> NUMERO

%token INVOCA FRUTA RITUAL REVELA GATO PRETO MUAHAHA COM ENVENENADA CICLOS PONTO_E_VIRGULA

%%

programa
    : /* vazio */
    | programa encantamento
    ;

encantamento
    : invocacao
    | condicional
    | loop
    | print
    ;

invocacao
    : INVOCA ser COM energia PONTO_E_VIRGULA
    ;

condicional
    : FRUTA energia ENVENENADA bloco
    ;

loop
    : RITUAL NUMERO CICLOS bloco
    ;

print
    : REVELA print_conteudo PONTO_E_VIRGULA
    ;

print_conteudo
    : ser
    | NUMERO
    | FRASE
    ;

bloco
    : GATO PRETO encantamentos MUAHAHA
    ;

encantamentos
    : /* vazio */
    | encantamentos encantamento
    ;

energia
    : ser NUMERO
    ;

ser
    : IDENTIFICADOR
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro: %s\n", s);
}

int main(void) {
    yydebug = 1;
    return yyparse();
}

