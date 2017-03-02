
# Pilotez votre PC à distance avec SSH et VNC à travers un proxy
## Présentation du projet

### Objectif initial

En informatique, l'accès à distance, la commande à distance ou encore le contrôle à distance sont des méthodes qui permettent, depuis un ordinateur éloigné et sans limite théorique de distance, de prendre le contrôle d'un autre ordinateur en affichant l'écran de celui-ci et en manipulant les fonctions correspondant au clavier et à la souris.

Les solutions d'accès à distance vous permettent d'accéder à pratiquement n'importe quel système d'exploitation, n'importe où dans le monde, et de le réparer et les techniciens peuvent discuter avec l'utilisateur, visionner et contrôler ses systèmes et ses appareils, et même collaborer avec d'autres techniciens ou intervenants externes pour résoudre rapidement tous les problèmes


L'enjeu de ce projet est trouvé un moyen assez simple et fonctionnel pour prendre la main sur la machine à distance (serveur) depuis le poste travail de l'entreprise sachant que cette machine est dérrière un proxy, ça veut dire le seule moyen pour sortir de réseau de l'entreprise se fait par le proxy http. l'idée est de prendre le contrôle de machine avec VNC (Virtual Network Computing)qui est le initiale d'un logiciel de Contrôle à Distance.


### Etude la solution
Il est possible de faire passer une connexion SSH à travers un proxy web du moment que celui-ci autorise la méthode CONNECT. Cette méthode est utilisée lors des connexions HTTPs par exemple et sert à établir un tunnel HTTP. Il est de ce fait assez courant qu'un proxy (ou serveur mandataire) laisse passer ce genre de communication. Tant mieux car c'est ce que nous allons utiliser.

Pour nous faciliter cette tâche, il existe un utilitaire qui s'occupe d'établir une fausse connexion HTTP entre votre machine et la machine distante. Car un proxy n'est juste qu'un relai, entre une machine sur le réseau local qui demande une requête HTTP, et le serveur distant. Ce logiciel demande donc à notre proxy web, s'il peut se connecter à la machine distante pour communiquer avec elle. Le serveur proxy s'exécute en pensant qu'il va s'agir d'une communication HTTPs, notre logiciel communique donc maintenant avec la machine distante et passe maintenant le relai à la commande ssh. Cet utilitaire s'appelle "corkscrew" (tire-bouchon en anglais), son site officiel est ici.
![](http://www.linuxed.net/public/schemas/corkscrew.png)

L'avantage de cette méthode, c'est que la machine distante n'a pas à avoir de configuration spécifique. Le seul problème est quand le proxy web n'est pas autorisé à joindre le port 22 (ssh) sur une machine distante, car c'est assez rare que des machines s'échangent des données en HTTP avec ce port. Dans ce cas, il suffit soit de faire une redirection de port sur la machine distante (ip proxy => port 443 => port 22/ssh), soit de lancer le démon ssh en écoute sur un autre port. Il suffira de choisir le port 443 qui correspond habituellement au HTTPs pour être tranquille avec ce genre de filtrage.

### D'abord nous avons étudié VNC:
Virtual Network Computing ou VNC est un logiciel utilisé pour se connecter à un ordinateur distant. Il permet de transmettre les saisies au clavier ainsi que les clics de souris d'un ordinateur à l'autre, à travers un réseau informatique, qu'il soit local ou par le biais d'Internet. VNC est indépendant de la plateforme, un client VNC installé sur n'importe quel système d'exploitation peut se connecter à un serveur VNC installé sur un autre système d'exploitation. Plusieurs clients peuvent se connecter en même temps sur un même serveur VNC.

L'utilisation principale de ce logiciel est le support technique à distance. Il est aussi possible de visualiser des fichiers sur son ordinateur de travail à partir de son ordinateur personnel ou, pour un professeur, de contrôler ce que font ses élèves pendant le cours d'informatique.

![](http://www.testplant.com/wp-content/uploads/2013/06/Vine-VNC-Diagram-v-1.jpg)

#### Deux types de serveur VNC
* Le premier consiste à prendre le contrôle du poste distant, donc à contrôler sa session ainsi que sa souris et son clavier.

* Le deuxième type de serveur VNC créé une session "virtuelle" accessible par le client. Le client exploite donc les ressources du serveur pour utiliser cette session virtuelle. Il ne pourra donc pas interagir à la place du clavier et de la souris du serveur.


##### Serveur libre
* X11vnc : Chiffrement SSL, identifiant et mot de passe. Il permet les transferts de fichier au formats UltraVNC et TightVNC.fonctionne sur système d'exploitation Windows et Unix.
* TightVNC serveur : chiffrement optimisé pour les connexions à faible débit. 
* Vino : pour environnement GNOME.
* UltraVNC : Permet l'utilisation d'un plugin open-source de chiffrement. Il permet également une identification basée sur les comptes utilisateurs NTLM et Active Directory.fonctionne sur système d'exploitation Windows et Unix.

##### Client libre
* linux 
    * tightvnc-java		
	* vnc-java		
	* tightvncviewer	
	* vnc4viewer		
* Windows
	* UltraVNC
* OS X 
	* Nous pouvons utiliser l'application de partage d'écran intégrée ou accéder à cette application via Safari. Dans Safari, nous pouvons saisir vnc: // yourserverip: 5901


Par défaut VNC utilise le port 5900 pour les connexions classiques du client VNC Viewer et le port 5800 pour le client VNC HTTP Java.
   


