all: help

SED=sed$(shell { sed v </dev/null >/dev/null 2>&1 && echo " -r" ; } || echo " -E" )

help:
	@eval $$($(SED) -n 's/^([a-zA-Z0-9_-]+):.*?## (.*)$$/printf "%-20s %s\\n" "\1" "\2";/ ;	ta; b; :a p' $(MAKEFILE_LIST))

sinclude makefile.$(shell uname -n)

.PHONY: check push github boulgour clean

check:							## vérifier la présence des outils nécessaires
	@bin/check-tools && echo OK

todo:							## lister les tâches à réaliser (TODO: dans les fichiers)
	@grep -r "TODO:" --exclude $(MAKEFILE_LIST) *

push:							## pousser les modifications vers les dépôts git
	git push boulgour master
	git push github master

github:							## récupérer les modifications depuis github et synchroniser
	git pull github master
	git push boulgour master

boulgour:						## récupérer les modifications depuis boulgour et synchroniser
	git pull boulgour master
	git push github master

clean:							## supprimer les fichiers inutiles
	-rm $(shell find . -name "*~")
