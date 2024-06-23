# Premake Template
Un projet C++ utilisant premake5. Le projet HelloLib contient une simple fonction `print()` à laquelle HelloWorld fait 
appel.

## Prérequis
- [premake](https://premake.github.io/), qui peut être installé sur certains systèmes, ou directement téléchargé dans le répertoire du projet.
- Une installation C++ (premake est compatible avec [certains IDEs](https://premake.github.io/docs/Using-Premake), des [modules](https://premake.github.io/community/modules/) sont aussi disponibles).

Éventuellement `clang-format`, l'extension C/C++ de VS Code suffit sinon. Le fichier `.clang-format` est fondé sur le style Microsoft.

## Configuration, compilation et exécution
`premake5 gmake2` (ou `vs2022`,`xcode4`...) puis `make config=debug` (ou `release`). La première commande peut varier 
selon l'installation de premake. La commande pour lancer l'exécutable dépend de la plateforme (par exemple
 `.\build\bin\windows-x86_64\Release\HelloWorld\HelloWorld.exe `)

 ## Ajout de dépendances
 - Pour lier un projet à une bibliothèque : `links { "foo", "bar" }`.
 - Si la bibliothèque n'est pas installée globalement, il est nécessaire de créer des dossiers `lib` et `include` à la racine du 
 projet et d'adapter les fichiers relatifs à premake en conséquence. Il faudra alors ajouter `libdirs {"../lib"}` et 
 `includedirs { "../include"}` dans les fichiers concernés.
