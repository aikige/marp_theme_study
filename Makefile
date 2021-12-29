.PHONY: png html clean

all: png sample.html

png:
	marp --images png sample.md

html: sample.html

sample.html:
	marp sample.md

clean:
	-rm -f *.png *html
