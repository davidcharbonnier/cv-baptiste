.PHONY: all cv

CC = xelatex
CV_DIR = cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: $(foreach x, cv, $x)

cv: cv.tex $(CV_SRCS)
	$(CC) $<

clean:
	rm -rf *.pdf
