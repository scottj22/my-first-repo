readme.md:guessinggame.sh
	echo "Unix Class Guessing Game" > README.md
	echo "Project has this many lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	date >> README.md
