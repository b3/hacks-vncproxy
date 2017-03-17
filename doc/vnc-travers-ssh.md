# Vnc au travers de SSH Linux-Linux sur le même réseau

Dans cette section, nous détaillerons la procédure pour établir une connexion VNC au travers de ssh.  
Nous appellerons la machine situé derrière le proxy : `le controlé`    
Et la machine distante : `le controleur`    
Dans un premier temps, nous avons essayé la manipulation avec des machines appartenant au même réseau privé.  
Pour y arriver il faut donc associer une commande ssh avec la commande reverse vnc vu précédemment.  

1ère étape :  

La connexion ssh doit se faire à partir du controlé avec cette commande :  
	$ ssh -R 5500:@ip_controleur:5500 localhost  

`-R`: permet de spécifier que tout ce qui arrive sur le port 5500 de la machine distante (controleur) sera transféré sur la machine local (controlé) via le port 5500  

A ce stade, une connexion ssh est établie entre les deux machines.  

2ème étape :  

Sur la machine distante (controleur), il faut lancer le client vnc. Il sera alors en écoute sur le port 5500 et attend qu'un serveur vienne écouter sur ce même port.

	$ xvnc4viewer -listen  
  
Les manipulations sont terminées coté controleur.  

3ème étape :  

Il faut maintenant lancé le server vnc coté `controlé`.

	$ x11vnc -connect localhost:5500  

Cette commande permet de se connecter à localhost via le port 5500.

Sur l'écran du controleur, on a bien pris la main du controlé.

Il faut maintenant intégrer `corkscrew` afin de traverser le proxy.
