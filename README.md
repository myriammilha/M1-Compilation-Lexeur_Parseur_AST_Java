# Projet — Compilateur Java avec AST - M1 Compilation

Ce projet implémente un compilateur pour un langage simple en Java.
Il utilise **JavaCC** pour l’analyse lexicale et syntaxique, construit un
**AST (Abstract Syntax Tree)**, puis génère du code assembleur.

---

## Structure du projet

- `AST/` : classes Java représentant l’AST
- `Compilateur.jj` : grammaire JavaCC (lexeur + parseur)
- `Makefile` : compilation, exécution et nettoyage
- `mi-makefile.sh` : ancien script bash (optionnel)
- `test.js` : exemple de programme source

---

## Prérequis

- Java (JDK 8+)
- JavaCC installé et accessible via la commande `javacc`

---

## Compilation et exécution

Pour générer le parseur, compiler le projet et exécuter le compilateur :

```bash
make
```

Cette commande :

1. Génère le parseur avec JavaCC
2. Compile les fichiers Java
3. Exécute le compilateur


## Exécution manuelle (sans Makefile)

```bash
javacc Compilateur.jj
javac AST/*.java *.java
java Compilateur
```

---

## Nettoyage

Pour supprimer uniquement les fichiers générés :

```bash
make clean
```
