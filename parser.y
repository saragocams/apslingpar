%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE *saida;

void yyerror(const char *s);
int yylex(void);
%}

%union {
    char* str;
    int numero;
}

%token <numero> NUMERO
%token <str> IDENTIFICADOR
%token <str> FRASE

%token INVOCA FRUTA RITUAL REVELA GATO PRETO MUAHAHA COM ENVENENADA CICLOS PONTO_E_VIRGULA

%type <numero> energia

%%

programa:
    {
        saida = fopen("SaidaGerada.java", "w");
        fprintf(saida, "public class SaidaGerada {\n  public static void main(String[] args) {\n");
    }
    encantamentos
    {
        fprintf(saida, "  }\n}\n");
        fclose(saida);
    }
;

encantamentos:
    /* vazio */
    | encantamentos encantamento
;

encantamento:
    invocacao
    | condicional
    | loop
    | impressao
;

invocacao:
    INVOCA IDENTIFICADOR COM energia PONTO_E_VIRGULA
    {
        fprintf(saida, "System.out.println(\"Invocando %s com poder %d\");\n", $2, $4);
    }
;

condicional:
    FRUTA energia ENVENENADA
    {
        fprintf(saida, "if (%d > 10) {\n", $2);
    }
    bloco
;

loop:
    RITUAL NUMERO CICLOS
    {
        fprintf(saida, "for (int i = 0; i < %d; i++) {\n", $2);
    }
    bloco
;


impressao:
    REVELA print_conteudo PONTO_E_VIRGULA
;

print_conteudo:
    IDENTIFICADOR { fprintf(saida, "System.out.println(\"%s\");\n", $1); }
    | NUMERO      { fprintf(saida, "System.out.println(%d);\n", $1); }
    | FRASE       { fprintf(saida, "System.out.println(%s);\n", $1); }
;

bloco:
    GATO PRETO encantamentos MUAHAHA
    {
        fprintf(saida, "}\n");
    }
;

energia:
    IDENTIFICADOR NUMERO
    {
        $$ = $2;
    }
;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro: %s\n", s);
}

int main(void) {
    return yyparse();
}
