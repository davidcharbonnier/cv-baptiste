.PHONY: all

CC = xelatex
RESUME_DIR = resume
CV_DIR = cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: $(foreach x, coverletter cv resume, $x)

resume: resume.tex $(RESUME_SRCS)
	$(CC) $<

cv: cv.tex $(CV_SRCS)
	$(CC) $<

coverletter: coverletter.tex
	$(CC) $<

clean:
	rm -rf *.pdf
