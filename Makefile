all: docs

docs: FORCE
	MSG="$(shell git log -1 --pretty=%B | tr -d '\n')"
	@echo $(MSG)
	# clean the site
	rm -rf _site/; \
	# make a folder
	mkdir -p _site/; \
	# make an index file
	pandoc README.md --to HTML --css css/bootstrap.css --template css/template.html > _site/index.html; \
	# copy the css over
	mkdir -p _site/css; \
	cp css/bootstrap.css _site/css/; \
	# make a site folder for th
	mkdir -p _site/th/; \
	for f in th/*.ipynb;	do \
		echo "$$f"; \
		jupyter nbconvert --to Markdown --template css/simplemd.tplx "$$f"; \
		pandoc $${f%.ipynb}.md --to HTML --css ../css/bootstrap.css --template css/template.html > _site/$${f%.ipynb}.html; \
	done; \
	sleep 1; \
	for f in th/*.ipynb;	do \
		echo "$$f"; \
		rm $${f%.ipynb}.md; \
	done
	#pandoc README.md -o docs/README.rst; \
	#cd docs/; \
	#sphinx-apidoc -e -f -M -o ./ ../; \
	#git add *.rst; \
	#git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	#mkdir -p ~/pages/pyg/docs; \
	cd ~/pages/pyg/qe/; \
	git pull; \
	git rm -r *; \
	cp -r ~/code/qe/_site/ ~/pages/qe/; \
	git add *; \
	git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	git push origin gh-pages; \
	cd ~/code/qe

FORCE:
