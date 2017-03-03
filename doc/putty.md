# ssh client depuis windows (PUTTY) avec exchange le clé ssh

Lorsque nous travaillons avec des clés privées (et publiques) générées par OpenSSH , nous aurons des fichiers appelés id_dsa et id_dsa.pub. Ces fichiers ne peuvent pas être utilisés directement dans Putty . Au lieu de cela ils doivent être convertis à quelque chose d'autre en utilisant PuTTYgen, également disponible à partir de la page Putty:
1. Télécharger PuTTY
2. Télécharger PuTTYgen .
3. Chargez votre clé, la mienne s'appelle id_rsa.
4. Entrez votre mot de passe.
5. Enregistrer la clé privée, j'ai enregistré le mien comme id_rsa.ppk. 

Notre clé privée d'origine (id_dsa) est maintenant convertie et enregistrée en tant que clé privée de mastic. (Id_dsa.ppk) Il y a maintenant deux choses que nous pouvons faire, l'utiliser directement ou l'utiliser avec un agent.

#### Utilisation de la clé convertie directement dans Putty

C'est le plus simple, mais nous oblige à taper notre mot de passe chaque fois que nous nous connectons à une machine.

1. Démarrer le PUTTY.
2. Allez dans Connections - SSH - Auth pour rechercher la nouvelle clé générée. (Id_dsa.ppk)
3. nous pouvons également enregistrer cette session et Ouvrir la connexion. 
 
#### Utilisation de la clé convertie dans Pagent

Nous pouvons utiliser un agent SSH comme Pagent pour stocker notre clé sur plusieurs sessions. Cela nous facilitera la vie lorsque nous nous connectons à des machines multi-prises. Afin de le faire:

   1. Télécharger Pagent .
   2. Démarrez l'agent en double-cliquant dessus.
   3. Double-cliquer sur l'icône de terminal dans la zone de barre des tâches inférieure droite.
   4. Ajouter une clé. Entrer notre phrase de passe juste une fois pour toute cette session.
   5. Fermez le Pagent, il restera actif dans la barre des tâches. 

Une dernière note; Sur les machines auxquelles nous nous connectons, nous n'avons pas besoin de changer / convertir des clés, utilisr simplement la clé publique (id_dsa.pub) générée par OpenSSH dans ~ / .ssh / authorized_keys. générée. (Id_dsa.ppk)
* Nous pouvons également enregistrer cette session et Ouvrir la connexion. 


