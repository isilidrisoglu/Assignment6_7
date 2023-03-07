#! /usr/bin/env make

website.html: read_append pandoc-doc-sidebar copy_png
	pandoc Website/Website.md -s --mathjax -f markdown+tex_math_double_backslash --template Website/toc-sidebar.html --toc  -o Website/website.html

copy_png: pandoc-doc-sidebar
	cp ViEWSMapGridCell.png Website/

read_append: pandoc-doc-sidebar
	# I put newline at the end of the each section to preserve section headings in the markdown file. 
	# Without this; approach, results and conclusion didn't appear as headings.

	cat preamble.txt >> Website/Website.md
	echo "\n" >> Website/Website.md
	cat litReview.txt >> Website/Website.md
	echo "\n" >> Website/Website.md
	cat approach.txt >> Website/Website.md
	echo "\n" >> Website/Website.md
	cat results.txt >> Website/Website.md
	echo "\n" >> Website/Website.md
	cat conclusion.txt >> Website/Website.md

pandoc-doc-sidebar:
	cp -r template Website/
	touch Website/Website.md
	

.PHONY: clean

clean:
	rm -rf Website
