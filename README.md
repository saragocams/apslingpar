
# Linguagem: MalevoLang

Linguagem de encantamentos inspirada na personagem **Malévola** – a icônica fada das trevas.


## 🧚‍♀️ Sobre a Linguagem

MalevoLang é uma linguagem fictícia e simbólica, baseada na gramática EBNF. Ela simula uma linguagem onde cada feitiço é construído com comandos como `invoca`, `ritual`, `se` e `revela`.  

---


## Tabela EBNF 

```ebnf
programa      ::= { encantamento } ;

encantamento  ::= invocacao | condicional | ritual | revela ;

invocacao     ::= "invoca" ser "com" energia ";" ;

condicional   ::= "se" energia "entao" bloco ;

ritual        ::= "ritual" numero "ciclos" bloco ;

revela        ::= "revela" (ser | numero | frase) ";" ;

bloco         ::= "abre" { encantamento } "fecha" ;

energia       ::= ser numero ;

ser           ::= letra { letra | digito | "_" } ;

numero        ::= digito { digito } ;

frase         ::= '"' { qualquer_caractere } '"' ;

letra         ::= "a".."z" | "A".."Z" ;

digito        ::= "0".."9" ;

qualquer_caractere ::= qualquer_símbolo_ou_letra_exceto_aspas ;
```

---

## Comandos e Sintaxe

| Comando     | Descrição                                                                 |
|-------------|---------------------------------------------------------------------------|
| `invoca`    | Invoca uma entidade mágica com uma certa quantidade de energia            |
| `se`        | Executa um feitiço se uma condição energética for verdadeira              |
| `ritual`    | Repetição mágica de encantamentos (laço)                                  |
| `revela`    | Exibe mensagens ou verdades mágicas                                        |
| `abre`/`fecha` | Delimita um bloco mágico com múltiplos feitiços                        |

---

## Exemplo

```plaintext
invoca corvo_negro com sombra13;

se maldicao5 entao abre
    revela "O reino cairá em sono eterno...";
    invoca espinhos_venenosos com treva77;
fecha

ritual 3 ciclos abre
    revela "A magia cresce com cada batida de asa...";
    invoca fogo_verde com treva99;
fecha
```
---