.PHONY: html png clean

html: sample.html

png: sample.md
	marp --images png $<

sample.html: sample.md
	marp $<

clean:
	-rm -f sample.*.png *html
