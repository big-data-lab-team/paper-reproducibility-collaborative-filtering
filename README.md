# How to get a pdf

A pdf is uploaded for every release of the paper:
* There is no release yet.

See instructions below to create a pdf for the current version.

# How to contribute

Fork the repository, edit ```paper.tex``` and ```biblio.bib```, and make a pull-request. 

Add your name and affiliation to the list of co-authors. Contact
tristan.glatard@concordia.ca if you feel that the list or order of
authors should be amended.

# How to give feedback

* General comments: create an issue in this repository.
* Detail comments in the paper: use command ```\note``` in ```paper.tex``` as follows: ```\note{This is a comment}```.

# How to generate the pdf

0. Install ```pdflatex```, ```gnuplot``` and ```bibtex```
1. Generate the figures: ```./plot_figures.sh``` (```gnuplot```)
2. Compile the document: ```pdflatex paper ; pdflatex ``` (yes, twice).
3. Generate the bibliography: ```bibtex paper ; pdflatex paper``` (yes, once again).
