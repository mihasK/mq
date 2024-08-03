git-squash:
	git reset $(git commit-tree HEAD^{tree} -m "A new start")

preview:
	quarto preview

publish:
	quarto publish gh-pages
