git-squash:
	git reset $(git commit-tree HEAD^{tree} -m "A new start")

preview:
	quarto preview

publish:
	quarto publish gh-pages

draft: # param n=
	mkdir posts/$(n) && \
	cp -n _examples/new_draft.ipynb posts/$(n)/$(n).ipynb
