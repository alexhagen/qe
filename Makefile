all: docs publish

docs: FORCE
	pandoc README.md --to rst -o docs/source/readme.rst
	# make a site folder for th
	mkdir -p docs/source/th/; \
	for f in th/*.ipynb;	do \
		echo "$$f"; \
		jupyter nbconvert --to RST --template css/simplerst.tplx --execute "$$f"; \
	done; \
	sleep 1; \
	mv th/*.rst docs/source/th/; \
	for f in th/*.ipynb;	do \
		echo "$$f"; \
		rm -f $${f%.ipynb}.md; \
		rm -f $${f%.ipynb}.html; \
	done; \
	# make a site folder for int
	mkdir -p docs/source/int/; \
	for f in int/*.ipynb;	do \
		echo "$$f"; \
		jupyter nbconvert --to RST --template css/simplerst.tplx --execute "$$f"; \
	done; \
	sleep 1; \
	mv int/*.rst docs/source/int/; \
	for f in int/*.ipynb;	do \
		echo "$$f"; \
		rm -f $${f%.ipynb}.md; \
		rm -f $${f%.ipynb}.html; \
	done; \
	# make a site folder for mat
	mkdir -p docs/source/mat/; \
	for f in mat/*.ipynb;	do \
		echo "$$f"; \
		jupyter nbconvert --to RST --template css/simplerst.tplx --execute "$$f"; \
	done; \
	sleep 1; \
	mv mat/*.rst docs/source/mat/; \
	for f in mat/*.ipynb;	do \
		echo "$$f"; \
		rm -f $${f%.ipynb}.md; \
		rm -f $${f%.ipynb}.html; \
	done; \
	mkdir -p docs/source/neu/; \
	for f in neu/*.ipynb;	do \
		echo "$$f"; \
		jupyter nbconvert --to RST --template css/simplerst.tplx --execute "$$f"; \
	done; \
	sleep 1; \
	mv neu/*.rst docs/source/neu/; \
	for f in neu/*.ipynb;	do \
		echo "$$f"; \
		rm -f $${f%.ipynb}.md; \
		rm -f $${f%.ipynb}.html; \
	done; \
	cd ~/code/qe/docs; \
	make html; \
	cp ../th/*.svg build/html/th/; \
	cp ../int/*.svg build/html/int/; \
	cp ../mat/*.svg build/html/mat/; \
	cp ../neu/*.svg build/html/neu/; \

publish: FORCE
	cd ~/pages/qe/; \
	git pull; \
	git rm -r *; \
	cp -r ~/code/qe/docs/build/html/* ~/pages/qe/; \
	touch .nojekyll; \
	git add * .nojekyll; \
	git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	git push origin gh-pages; \
	cd ~/code/qe

FORCE:
