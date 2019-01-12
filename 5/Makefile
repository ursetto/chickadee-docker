TAG=chickadee:c5
REPOBASE=$(HOME)/scheme

build:
	docker build -t $(TAG) .
run:
	docker run -it --rm -v $$PWD/repo:/repo -v $$PWD/wiki:/wiki -e CHICKEN_DOC_REPOSITORY=/repo -p 8080:8080 $(TAG) $(CMD)

wiki:
	ln -nsf /Users/jim/scheme/chicken-wiki wiki

repo:
	ln -nsf /Users/jim/scheme/chicken-doc-admin/4 repo

# Could move this to src/Makefile or a clone shell script. 'cd src' could fail.
.PHONY: clone
clone:
	mkdir -p src
	cd src; git -C chicken-doc pull       || git clone $(REPOBASE)/chicken-doc
	cd src; git -C chicken-doc-admin pull || git clone $(REPOBASE)/chicken-doc-admin
	cd src; git -C chickadee pull         || git clone $(REPOBASE)/chickadee
