git-squash:
	git reset $(git commit-tree HEAD^{tree} -m "A new start")

preview:
	quarto preview

publish:
	quarto publish gh-pages

draft name: # just first param 
	mkdir posts/{{name}} && \
	cp -n _examples/new_draft.ipynb posts/{{name}}/{{name}}.ipynb

print_var:
	echo $AWS_ACCESS_KEY_ID