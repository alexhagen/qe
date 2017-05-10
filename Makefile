all: docs publish

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
	cp css/*.svg _site/css/; \
	# make a site folder for th
	mkdir -p _site/th/; \
	for f in th/*.ipynb;	do \
		echo "$$f"; \
		jupyter nbconvert --to HTML --template css/simplehtml.tplx "$$f"; \
		pandoc $${f%.ipynb}.html --from HTML --to HTML --css ../css/bootstrap.css --template css/template.html > _site/$${f%.ipynb}.html; \
	done; \
	sleep 1; \
	for f in th/*.ipynb;	do \
		echo "$$f"; \
		rm -f $${f%.ipynb}.md; \
		rm -f $${f%.ipynb}.html; \
	done

publish: FORCE
	cd ~/pages/qe/; \
	git pull; \
	git rm -r *; \
	cp -r ~/code/qe/_site/* ~/pages/qe/; \
	touch .nojekyll; \
	git add * .nojekyll; \
	git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	git push origin gh-pages; \
	cd ~/code/qe

FORCE:
