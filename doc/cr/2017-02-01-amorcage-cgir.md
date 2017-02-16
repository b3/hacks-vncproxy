# Présents

- Bruno BEAUFILS
- Jean CANIVEZ
- Florian LEGRAND
- Fatemeh ZAOURI


# Rappel de la présentation du projet

Les étudiants ont expliqué ce qu'ils ont compris du projet et les outils qu'ils imaginent utiliser.

Pour le tunnel :

- [Corkscrew](http://agroman.net/corkscrew/)
- [Httptunnel](http://http-tunnel.sourceforge.net/)
- un reverse proxy

Pour la connection ssh

- [OpenSSH](http://www.openssh.com)
- [Putty](http://www.putty.org)

Bruno a réexpliqué l'origine et l'objectif du projet puis a détaillé un **exemple** des tâches à accomplir qui permet par exemple une répartition du travail :

- prendre en main le fonctionnement de VNC sur un réseau local
  1. avec une circulation classique (protocole VNC simple)
  2. avec une communication chiffrée (VNC au dessus de SSH)
  3. avec une communication chiffrée établit depuis la machine qui exécute le serveur VNC (il s'agit ici de vérifier que la redirection de ports offerts par OpenSSH peut convenir).

  Regarder les scripts `diffuser_ecran` et `regarder_ecran` peut être utile mais sans doute moins que lire les man pages de `x11vncviewer` et `x11vnc`.

- trouver une solution d'établissement d'une connection ssh depuis un réseau privé

  - [`corkscrew`](http://agroman.net/corkscrew) paraît une bonne idée dans un premier temps

- trouver des serveurs VNC adéquats

  - `x11vnc` pour Linux est une bonne idée mais il faut aussi en trouver un fonctionnant sous `wayland` plutôt que `X11`
  - pour Windows
  - pour MacOS X [Vine Server](https://sourceforge.net/projects/osxvnc/) semble utilisable

- mettre en place un environnement de test en salle de TP

  Il faut pouvoir disposer d'une machine publique : utiliser un ordinateur portable avec une connection à l'Internet via le partage de réseau d'un abonnement GSM est sans doute une piste intéressante.

Les contraintes imposés ont été également (ré)explicitées :

- licences libres pour les outils utilisés
- documentations courtes et illustrées en français **et** en anglais
- procédure la plus simple possible sur la machine à assister (scripts si possible)
- utilisation de `git` et `markdown`

Une explication succinte et très rapide de `git` et `markdown` a été faite.


# Déroulement du projet

Les étudiants produiront un compte-rendu hebdomadaire de leur avancement.

Le travail sera conservé sous le contrôle de l'outil de gestion de version [`git`](http://git-scm.org) sur un dépôt initié par Bruno et donc une copie sera disponible chez [github](https://github.com).

Toutes les documentations et productions écrites (documentation, diaporamas, rapport) seront rédigés au format [Markdown à la sauce Github](https://guides.github.com/features/mastering-markdown).

# Tâches pour la fin de semaine

## Étudiants

- [ ] Se familiariser avec git via la lecture de [Progit](https://git-scm.com/book/fr/v2) par exemple.

- [ ] Se familiariser avec le format [Markdown](http://daringfireball.net/projects/markdown) et sa [version modifiée par Github](https://guides.github.com/features/mastering-markdown).

- [ ] Préparer un planning prévisionnel du travail

- [ ] Créer un compte chacun sur [github](https://github.com)

  - y déposer une clé publique ssh

  - transmettre les identifiants à Bruno

## Bruno

- [ ] faire un compte-rendu de cette réunion

- [ ] initier et rendre disponible un dépôt git aux étudiants

# Prochain RDV : pendant le cours de supervision du 14 février

Contact par email (*harcelement* possible) si nécessaire.
