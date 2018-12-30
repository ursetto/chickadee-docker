build:
	docker build -t chickadee .
run:
	docker run -it --rm -v $$PWD/repo:/usr/local/share/chicken/chicken-doc:ro -p 8080:8080 chickadee
