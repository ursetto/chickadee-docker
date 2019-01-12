build:
	docker build -t chickadee:c5 .
run:
	docker run -it --rm -v $$PWD/repo:/repo:ro -v $$PWD/wiki:/wiki -e CHICKEN_DOC_REPOSITORY=/repo -p 8080:8080 chickadee:c5

wiki:
	ln -nsf /Users/jim/scheme/chicken-wiki wiki

repo:
	ln -nsf /Users/jim/scheme/chicken-doc-admin/4 repo
