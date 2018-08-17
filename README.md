# How to get a pdf

A pdf is uploaded for every release of the paper:

* [Release 
0.1](https://github.com/big-data-lab-team/paper-reproducibility-collaborative-filtering/releases/download/0.1/paper.pdf): 
submitted to IEEE Big Data 2018 and arxiv pre-print.

See instructions below to create a pdf for the current version.

# How to contribute

Fork the repository, edit ```paper.tex``` and ```biblio.bib```, and make a pull-request. 

# How to give feedback

* General comments: create an issue in this repository.
* Detail comments in the paper: use command ```\note``` in ```paper.tex``` as follows: ```\note{This is a comment}```.

# How to generate the pdf

0. Install ```pdflatex```, ```gnuplot``` and ```bibtex```
1. Generate the figures: ```./plot_figures.sh``` (requires ```gnuplot```)
2. Compile the document: ```pdflatex paper ; pdflatex paper``` (yes, twice).
3. Generate the bibliography: ```bibtex paper ; pdflatex paper``` (yes, once again).

# Data and code

* Prediction results in `data/results` were obtained from utility matrices in `data/Utility_Matrix`, using `predict.py` from [repro-tools](https://github.com/big-data-lab-team/repro-tools) version 0.1.1.
* Figures in `figures` containing matrices were obtained using `plot_matrix.py` from [repro-tools](https://github.com/big-data-lab-team/repro-tools) version 0.1.1. 
