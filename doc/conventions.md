# Conventions de travail

## Stockage des fichiers

Les programmes directement exécutables (shell, perl, binaire) doivent être stockés dans `bin`. Ils doivent éviter d'avoir des dépendances externes. Si c'est inévitable le programme doit utiliser une copie locale (placée dans `lib` par exemple) et sa disponibilité/accessibilité doit être vérifiable par le script [`check-tools`](../bin/check-tools).

Les documents et documentations doivent être stockés dans `doc`.

Les comptes-rendus de réunions doivent être stockés dans `doc/cr` sous la forme `AAAA-MM-JJ-label` avec `AAAA-MM-JJ` la date de la réunion et `label` un identifiant de la réunion (genre `bilan-semaine-1`).

Les supports de présentations des travaux doivent être stockés dans `doc/prez` sous la forme `AAAA-MM-JJ-label` avec `AAAA-MM-JJ` la date de la réunion et `label` un identifiant de la présentation (genre `soutenance-cgir`).

Les archives récupérées contenant des programmes ou librairies extérieurs doivent être stockés dans `ext`.

## Nommage des fichiers

Les fichiers stockés dans `doc` doivent être nommés en utilisant uniquement des caractères minuscules et en se limitant aux lettres latines (**non-accentuées**), chiffres arabes et au tiret (`-`). On utilise le point (`.`) uniquement pour séparer le nom du fichier de son extension (`.md` par exemple).

## Format des fichiers

On utilise uniquement des fichiers dont le contenu est dans un format ouvert *et* libre (pas de word, powerpoint, OOXML, etc.).

Pour les documentations on essaie de se limiter à utiliser le format [Markdown à la sauce Github](https://guides.github.com/features/mastering-markdown) (on utilise donc le suffixe `.md` pour le nom du fichier).

Les fichiers texte sont encodés en **UTF-8** et rien d'autre (pas d'UTF-16 *à la* Mac OS ou Windows-1252 *à la* Windows).

## Fonctionnement des programmes

Tous les programmes crées doivent être utilisables en ligne de commande.

Ils doivent être non-interactif : toutes les informations (chemin de fichiers, paramètres, destination) dont ils ont besoin doivent être spécifiables via des options de la ligne de commande.

Ils doivent accepter les options `-h` et `--help`. Ces options doivent provoquer l'affichage d'un manuel simple et précis. Aucune ligne de ce manuel ne doit comporter plus de 80 caractères (`LF` inclus). La forme de ce manuel doit respecter le modèle suivant :

~~~

Modèle de script minimal avec le traitement de la doc.

usage: script [OPTIONS] ARGUMENTS...

La doc complète doit venir ici. Toutes valeurs utilisées par défaut doivent y
être spécifiées.

OPTIONS :
    -h, --help   affiche ce message d'aide

~~~

Ils doivent avoir un objectif simple (et unique) précisé sur la première ligne du manuel. Il vaut mieux plusieurs petits programmes combinables qu'un seul gros.
