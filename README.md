
# Linguagem: MalevoLang

Linguagem de encantamentos inspirada na personagem **Malévola** – a icônica fada das trevas.


## 🧚‍♀️ Sobre a Linguagem

MalevoLang é uma linguagem fictícia e simbólica, baseada na gramática EBNF. Ela simula uma linguagem onde cada feitiço é construído com comandos como `invoca`, `ritual`, `fruta` e `revela`.  

---


## Tabela EBNF 

```ebnf
programa      ::= { encantamento } ;

encantamento  ::= invocacao | condicional | ritual | revela ;

invocacao     ::= "invoca" ser "com" energia ";" ;

condicional   ::= "fruta" energia "envenenada" bloco ;

loop        ::= "ritual" numero "ciclos" bloco ;

print        ::= "revela" (ser | numero | frase) ";" ;

bloco         ::= "gato preto" { encantamento } "muahaha!" ;

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
| `fruta`     | Envenena uma fruta se uma condição energética for verdadeira              |
| `ritual`    | Repetição mágica de encantamentos (loop)                                  |
| `revela`    | Exibe mensagens ou verdades mágicas                                        |
| `gato preto`/`muahaha!` | Delimita um bloco mágico com ajuda de um gato preto                        |

---

## Exemplo

```plaintext
invoca corvo_negro com sombra 13;

fruta amaldicoada 7 envenenada
gato preto
revela "O reino caira em sono eterno..." ;
invoca espinhos_venenosos com treva 77;
muahaha!

ritual 3 ciclos
gato preto
revela "A magia cresce com cada batida de asa..." ;
invoca fogo_verde com treva 99;
muahaha!
```
---