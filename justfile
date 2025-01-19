git-squash:
	git reset $(git commit-tree HEAD^{tree} -m "A new start")

preview:
	quarto preview

publish:
	quarto publish gh-pages

default_ext := 'ipynb'


draft name ext=default_ext: # just first param 
	mkdir posts/{{name}} && \
	cp -n _examples/new_draft.{{ext}} posts/{{name}}/{{name}}.{{ext}}

print_var:
	echo $PWD