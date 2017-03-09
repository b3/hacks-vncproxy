# Fontionnement de Secure Shell (SSH)

SSH est un programme qui permet de se connecter à une machine distante. Il établit une connexion sécurisées et chiffrées entre les deux machines.

## Installation de SSH

Pour obtenir SSH, il faut tout simplement installer le paquet `openssh`  pour la partie client et `openssh-server` pour la partie serveur. 

Pour se connecter à une machine, on exécute la commande :
	
    ssh [nom_utilisateur]@machine

## Configuration de ssh

La configuration de ssh se fait via différents fichiers:
* `/etc/ssh/ssh_config` : configuration du client ssh
* `/etc/ssh/sshd_config` : configuration du serveur ssh
* `/etc/ssh_host_rsa_key` : clé privée du serveur
* `/etc/ssh/ssh_host_rsa_key.pub` : clé publique du serveur

Les lignes les plus importantes du fichier de configuration du serveur sont :
* `Port 22` signifie que le serveur SSH écoute sur le port 22 (Port par défaut de SSH). Pour écouter sur un autre port, il suffit donc de changer cette ligne.
* `PermitRootLogin yes` signifie  que Root peut se connecter par SSH. Si l'on change en `no`, il faudra alors se connecter en tant que simple utilisateur puis utiliser la commande `su` pour passer Root.

## Chiffrement de la connexion

Il existe de nombreuses façon de chiffrer la connexion et la méthode utilisée est le chiffrement asymétrique.

A la différence du chiffrement symétrique, le chiffrement asymétrique utilise une clé pour chiffrer puis une seconde clé pour déchiffrer.

Il y a donc deux clés :

* une clé **publique** servant à chiffrer
* une clé **privée** servant à déchiffer

Chaque utilisateur peut générer sa paire de clé a l'aide de la commande : `ssh-keygen`
    
Cette commande va générer une paire de clé qui sera stocké dans le répertoire : `~/.ssh`
    
Le fichier `id_rsa` contient la clé privée et le fichier `id_rsa.pub` contient la clé publique.

Une fois les clés générées, il faut copier la clef publique dans le fichier `~/.ssh/authorized_keys` de la machine sur laquelle on veut se connecter à distance. Cette commande permet de réaliser cette opération via SSH :

	ssh-copy-id -i ~/.ssh/id_rsa.pub login@nom_machine_serveur
    
La machine distante possède maintenant la clé publique du client. Les deux machines peuvent maintenant s'échanger des données chiffrées et les déchiffrer.
