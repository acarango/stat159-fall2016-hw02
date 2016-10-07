.PHONY: all data clean

all: report.pdf eda-output.txt regression.RData

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > ./data/Advertising.csv

clean:
	cd report; rm -f report.pdf  

report.pdf: report/report.rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; pandoc report.rmd  --latex-engine=xelatex -o report.pdf

eda-output.txt: code/eda-script.R data/Advertising.csv 
	cd code; Rscript eda-script.R

regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R 
