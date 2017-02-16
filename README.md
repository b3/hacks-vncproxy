# Contrôler une machine sur un réseau privé derrière un proxy web

On trouve ici de la documentation sur comment pouvoir assister, à distance, un utilisateur dont l'ordinateur est placé sur un réseau fermé dont le seul accès à l'Internet se fait via un proxy web.

La première piste est d'expliquer, via de la documentation et une preuve de concept (*Proof Of Concept* ou *POC* en anglais), comment se connecter, grâce à [OpenSSH](http://www.openssh.com), à un serveur [VNC][VNC-fr] ([Virtual Network Computing][VNC-en]) fonctionnant sur une machine placée sur un réseau privé, qui n'a accès à l'Internet que via un proxy web.

[VNC-en]: https://en.wikipedia.org/wiki/Virtual_Network_Computing
[VNC-fr]: https://fr.wikipedia.org/wiki/Virtual_Network_Computing

Le travail est dirigé par Bruno BEAUFILS et débuté par trois étudiants de la licence professionnelle [CGIR](http://cgir.univ-lille1.fr) dans le cadre de leur projet de mise en oeuvre au cours de l'année 2016-2017 :

- Jean CANIVEZ
- Florian LEGRAND
- Fatemeh ZOHARI


# Contenu

- [`bin`](bin) contient les scripts et programmes créées
- [`doc`](doc) contient des documentations (synthèse, références, conventions,
  [CR de réunions](doc/cr), [rapport](doc/report), [diaporama](doc/prez),
  etc.)


# Droits

Copyright (C) 2017 Bruno BEAUFILS

Les scripts distribués ici le sont sous les termes de la *licence général publique GPL, version 2*, disponible dans le fichier [GNU-GPL](GNU-GPL).

Les autres documents distribués ici sont mis à disposition selon les termes de la *licence Creative Commons Attribution - Pas d’Utilisation Commerciale - Partage dans les Mêmes Conditions 4.0 International* (CC-BY-NC-SA), disponible dans le fichier [CC-BY-NC-SA](CC-BY-NC-SA).
