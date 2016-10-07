.PHONY: all data clean

all: report.pdf eda-output.txt regression.RData

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> ./data/Advertising.csv

clean:
	cd report; rm -f report.pdf 

report.pdf: report.Rmd regression.RData scatterplot-tv-sales.png
	cd report; pandoc report.Rmd --latex-engine=xelatex -o report.pdf

eda-output.txt: eda-script.R Advertising.csv
	cd code; Rscript eda-script.R

regression.RData: regression-script.R Advertising.csv
	cd code; Rscript regression-script.R
