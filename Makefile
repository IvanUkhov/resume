name := resume

all:
	latexmk -pdf -pvc ${name}.tex

publish:
	mv ${name}.pdf _${name}.pdf
	git checkout gh-pages
	mv _${name}.pdf ${name}.pdf
	git add ${name}.pdf
	git commit --amend --message "Update the résumé"
	git push --force
	git checkout main

.PHONY: all publish
