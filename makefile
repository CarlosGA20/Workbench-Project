all: README.md

README.md:
	echo "#The Unix Workbench Project" > README.md
	echo "##The date and time at which make was run is "`date` >> README.md
	echo "##The number of lines in (*guessinggame.sh*) is "`wc -l < guessinggame.sh` >> README.md

clean:
	rm README.md
