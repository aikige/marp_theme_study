.PHONY: html png clean data

html: sample.html

data: logo.txt background.txt

logo.txt: logo.svg
	openssl base64 -A -in $< -out $@

background.txt: background.png
	openssl base64 -A -in $< -out $@

png: sample.md
	marp --images png $<

sample.html: sample.md my_theme.css
	marp $< 

clean:
	-rm -f sample.*.png *html logo.txt background.txt
