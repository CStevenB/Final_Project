#!/usr/bin/env bash
# file: makefile

README.md:
	echo "\# Unix Workbench Final Project: Guessinggame\n" > README.md
	echo "\#\# Date make was run:" >> README.md
	date >> README.md
	echo "\n\#\#Lines of code:" >> README.md
	wc -l guessinggame.sh >> README.md
