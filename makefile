#/usr/bin/env bash

create: guessinggame.sh
	touch README.md
	echo "_Title_ : **guessing game**" > README.md
	echo date  $$(date) >> README.md
	echo "Number of lines : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
del:
	rm README.md