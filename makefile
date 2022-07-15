#/usr/bin/env bash

create: guessinggame.sh
	touch README.md
	echo "_Title_ : **guessing game** \n" >> README.md
	echo date:  $$(date)  >> README.md
	echo "\n Number of lines : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
del:
	rm README.md