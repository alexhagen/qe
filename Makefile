all: docs

docs: FORCE
	MSG="$(shell git log -1 --pretty=%B | tr -d '\n')"
	@echo $(MSG)
	# make a folder
	mkdir -p _site/; \
	# make an index file
	pandoc README.md --to HTML --css css/bootstrap.css --template css/template.html > _site/index.html; \
	# copy the css over
	mkdir -p _site/css; \
	cp css/bootstrap.css _site/css/; \
	# now go to th
	cd th; \
	# make a site folder
	mkdir -p ../_site/th; \
	for f in *.ipynb; do jupyter nbconvert $f --to HTML; pandoc --to HTML --css css/bootstrap.css --template ../css/template.html > ../_site/th/${f%.ipynb}.html; done; \
	#pandoc README.md -o docs/README.rst; \
	#cd docs/; \
	#sphinx-apidoc -e -f -M -o ./ ../; \
	#git add *.rst; \
	#git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	#mkdir -p ~/pages/pyg/docs; \
	#cd ~/pages/pyg/docs/; \
	#git rm -r *; \
	#mkdir -p ~/pages/pyg/docs; \
	#cd ~/code/pyg/docs/; \
	#make html; \
	#cp -r .build/html/* ~/pages/pyg/docs/; \
	#cd ~/pages/pyg/docs; \
	#git add *; \
	#git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	#git push origin gh-pages; \
	#cd ~/code/pyg

FORCE:
