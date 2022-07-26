python=/usr/bin/env python

all: clean build

build:
	mkdir -p static
	mkdir -p public
	$(python) manage.py collectstatic --noinput

clean:
	rm -rf public
	rm -rf static