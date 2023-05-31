.PHONY: html png clean data

MD_FILES = sample.md
HTML_FILES = $(patsubst %.md,%.html,$(MD_FILES))
PNG_FILES = $(patsubst %.md,%.png,$(MD_FILES))

html: $(HTML_FILES)
png: $(PNG_FILES)
data: logo.txt background.txt

logo.txt: logo.svg
	openssl base64 -A -in $< -out $@

bg.txt: bg.svg
	openssl base64 -A -in $< -out $@

$(PNG_FILES): %.png: %.md
	marp --images png $<

$(HTML_FILES): %.html: %.md my_theme.css
	marp $< 

clean:
	-$(RM) sample.*.png *html logo.txt background.txt
