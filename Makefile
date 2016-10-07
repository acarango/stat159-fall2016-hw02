.PHONY: all data clean

all: report.html eda-output.txt regression.RData

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > ./data/Advertising.csv

clean:
	cd report; rm -f report.html report.md 

report.html: report/report.Rmd  data/regression.RData images/scatterplot-tv-sales.png
	cd report; Rscript -e "require(knitr); require(markdown); knit('report.Rmd', 'report.md'); markdownToHTML('report.md', 'report.html', options=c('use_xhml'))"; rm report.md
	

eda-output.txt: code/eda-script.R data/Advertising.csv 
	cd code; Rscript eda-script.R


regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R 
