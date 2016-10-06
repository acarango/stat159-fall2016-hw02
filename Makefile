.PHONY: all data clean

all:

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> ./data/Advertising.csv

clean:
	cd report; rm -f report.pdf 
