all: README.md

README.md:
	echo "# Guessing Game Project" > README.md
	echo "**Make was run on:**" >> README.md
	date +%c >> README.md
	echo "**Number of lines of code in guessinggame.sh:**" >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
