# Creuser un tunnel sous HTTP avec Corkscrew

## Linux --> Linux
Corkscrew est un simple outil pour faire un tunnel TCP à travers un proxy HTTP. Il peut être utilisé par exemple pour se connecter à un serveur SSH, qui écoute sur le port 443, à travers un proxy HTTPS dit « strict ».

#### Installation de Corkscrew

Corkscrew va s’installer sur notre machine cliente.Il'y a deux maniére pour installer corkscrew:

>  1- Si nous sommes sur Debian c’est toujours la même mélodie :
 
```javascript
shirin@debian:~$ sudo apt-get install corkscrew
```
> 2-  Pour le construire 
> 	 * nous devons le télécharer, 
>    * puis, dans le répertoire de corkscrew, tapez ```./configure``` 
>    * puis ```make```
>	 * Pour l'installer dans le répertoire du corkscrew, tapez ```make install```


Vous devriez trouver corkscrew dans votre gestionnaire de paquets habituels peu importe votre distribution, il existe même sur Mac port c’est vous dire.

#### Comment est-il utilisé?

La mise en place de corkscrew avec SSH / OpenSSH est très simple. Ajouter La ligne suivante vers votre fichier ~ / .ssh / config :

```javascript
Host *
   ProxyCommand /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr 3128 %h %p
```
Remplacer /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr et 3128 par des valeurs correctes.

#### Problème avec la connection au serveur avec ssh:

malgré que la clé ssh soit correcte, je reçoie ce message d'erreur:
```javascript
ssh -vvv XXX@test.boulgour.com
OpenSSH_6.7p1 Debian-5+deb8u3, OpenSSL 1.0.1t  3 May 2016
debug1: Reading configuration data /home/infoetu/XXX/.ssh/config
debug1: /home/infoetu/XXX/.ssh/config line 5: Applying options for *
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 19: Applying options for *
debug1: Executing proxy command: exec /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr 3128 test.boulgour.com 22
debug1: permanently_drop_suid: 1779
debug1: identity file /home/infoetu/XXX/.ssh/id_rsa type 1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_rsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_dsa type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_dsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ecdsa type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ecdsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ed25519 type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/XXX/.ssh/id_ed25519-cert type -1
debug1: Enabling compatibility mode for protocol 2.0
debug1: Local version string SSH-2.0-OpenSSH_6.7p1 Debian-5+deb8u3
Proxy could not open connnection to test.boulgour.com:  Forbidden
ssh_exchange_identification: Connection closed by remote host
```

je trouve que corkscrew peut être utilisé pour se connecter à un serveur SSH exécuté sur un port 443 distant via un proxy HTTPS strict.donc je pense le seul moyen pour resoudre ce problem est de changer le port ssh sur serveur distance, en ajoutant lien suivant au fichier sshd_config:
```javascript
Port 443
```
Et depuis notre machin local nous devond Créer le fichier ~/.ssh/config avec le contenu suivant :
```javascript
Host *
ProxyCommand /usr/bin/corkscrew cache-etu.unive-lille1 3128 %h %p 
```
vous devez taper:
```javascript
ssh -vvv -X -p 443 -i -i ~/.ssh/keys/id_rsa XXX@test.boulgour.com
```
Et voila on est connecté:
```javascript
Enter passphrase for key '/root/.ssh/keys/id_rsa': 

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Wed Mar  8 15:42:21 2017 from cacheserv2.univ-lille1.fr
XXX@lille:~$ 
```

