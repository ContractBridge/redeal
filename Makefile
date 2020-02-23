.PHONY: build dbuild run venv

all: run

build:
	git submodule init
	git submodule update

dbuild:
	docker build -t folkengine/redeal .

run:
	docker run -i -t --rm folkengine/redeal

venv:
	virtualenv venv
