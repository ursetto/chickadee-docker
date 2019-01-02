build:
	docker build -t chickadee:slim .
run:
	docker run -it --rm -v $$PWD/repo:/usr/local/share/chicken/chicken-doc:ro -p 8080:8080 chickadee:slim
dev:
	docker run -it --rm -v $$PWD/repo:/usr/local/share/chicken/chicken-doc:ro -v /Users/jim/scheme/chickadee:/usr/src/chickadee -p 8080:8080 chickadee:slim bash


repo:
	ln -nsf /Users/jim/scheme/chicken-doc-admin/4 repo
