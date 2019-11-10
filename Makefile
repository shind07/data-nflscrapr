.PHONY: build
build:
	echo "building nflscrapr container..."
	docker build -t nflscapr .


.PHONY: run
run: build
	docker run nflscapr games --year=2014 --type=reg
