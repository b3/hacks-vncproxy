# Taches à réaliser

* ssh client depuis windows (PUTTY) avec exchange le clé ssh
* ssh au dessus de proxy HTTP
* connection VNC au Linux
	* reverse vnc
* connection VNC sur Windows
* VNC au dessus de ssh



### ssh au dessus de proxy HTTP

#### Installation corkscrew

introduction
------------
Le corkscrew est un outil de tunneling SSH via les proxys HTTP.

Pour le construire vous devez le télécharchez et puis dans
le répertoire du corkscrew, tapez './configure' puis 'make'.

Pour l'installer dans le répertoire du corkscrew, tapez 'make install'.


Comment est-il utilisé?
---------------
La mise en place du corkscrew avec SSH / OpenSSH est très simple. Ajouter
La ligne suivante vers votre fichier ~ / .ssh / config :

```javascript
Host *
   ProxyCommand /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr 3128 %h %p 
```

remplacer /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr et 3128 par des valeurs correctes


##### mon problem de se connecter au serveur avec ssh:

malgré que je suis sure que mon clé publique marche bien, je reçoie cette message d'erreur 


```javascript
ssh -vvv test.boulgour.com
OpenSSH_6.7p1 Debian-5+deb8u3, OpenSSL 1.0.1t  3 May 2016
debug1: Reading configuration data /home/infoetu/zoharif/.ssh/config
debug1: /home/infoetu/zoharif/.ssh/config line 5: Applying options for *
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 19: Applying options for *
debug1: Executing proxy command: exec /tmp/toto/bin/corkscrew cache-etu.univ-lille1.fr 3128 test.boulgour.com 22
debug1: permanently_drop_suid: 1779
debug1: identity file /home/infoetu/zoharif/.ssh/id_rsa type 1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_rsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_dsa type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_dsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_ecdsa type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_ecdsa-cert type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_ed25519 type -1
debug1: key_load_public: No such file or directory
debug1: identity file /home/infoetu/zoharif/.ssh/id_ed25519-cert type -1
debug1: Enabling compatibility mode for protocol 2.0
debug1: Local version string SSH-2.0-OpenSSH_6.7p1 Debian-5+deb8u3
Proxy could not open connnection to test.boulgour.com:  Forbidden
ssh_exchange_identification: Connection closed by remote host
```
je veux actuellement trouver une solution sur cette partie...



