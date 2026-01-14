# Projet Java – JavaCC / AST / Compilation M1

# Commandes
JAVACC = javacc
JAVAC  = javac
JAVA   = java

# Cibles par défaut
all: build run

# Génération du parseur avec JavaCC
parser:
	$(JAVACC) Compilateur.jj

# Compilation Java
build: parser
	$(JAVAC) AST/*.java *.java

# Exécution
run:
	$(JAVA) Compilateur

# Nettoyage (uniquement fichiers générés)
clean:
	rm -f *.class AST/*.class
	rm -f Compilateur.java CompilateurConstants.java CompilateurTokenManager.java
	rm -f Token.java TokenMgrError.java ParseException.java SimpleCharStream.java
