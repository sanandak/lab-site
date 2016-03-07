site-dev:
	docker build -t site-dev .
run:
	docker run --name rpal -p 8080:80 -d site-dev
