# Présentation
>## Objectif du projet
>## Etude des solutions
>## Avantages des solutions retenues  
# Mise en oeuvre
>## SSH au dessus du proxy HTTP/HTTPS
>>### Script
>## Connection VNC sur machine Linux
>### Virtual Network Computing (VNC)
Virtual Network Computing (VNC) est un logiciel utilisé pour se connecter à un ordinateur distant.
Il permet de transmettre les saisies au clavier ainsi que les clics de la souris d'un ordinateur à l'autre.  
Cela permet tout simplement de prendre le contrôle d'une machine distante qu'elle soit en local ou par le biais d'internet.  
Pour l'utiliser, nous avons besoin d'un `client VNC` ainsi qu'un `serveur VNC`.
Le client VNC se connecte sur un serveur et permet d'en prendre son contrôle.

![](img/vnc-exemple.jpg)

Dans le cadre de notre projet, nous avons besoin d'utiliser VNC au mode `reverse`
Ce n'est pas le client qui se connecte au serveur mais l'inverse. Le client va attendre qu'un serveur vienne se connecter à lui.
Nous avons donc mis en place ce `reverse VNC` entre deux machines situées sur le même réseau local (sans traverser de proxy)  
>>### Reverse VNC
Nous allons donc prendre le contrôle d'une machine Linux à l'aide d'une autre machine Linux située sur le même réseau privé (Salle de TP).  

>## Connection VNC sur machine Windows
>>### Reverse VNC
>## VNC au dessus de SSH sans proxy
> ## SSH et VNC à travers le proxy
# Conclusion
# Annexes
