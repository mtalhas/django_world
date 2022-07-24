python=/usr/bin/env python

all: clean build

build:
	$(python) install -r requirements.txt
	mkdir -p static
	mkdir -p public
	$(python) manage.py collectstatic --noinput
	$(python) manage.py distill-local --force

clean:
	rm -rf public
	rm -rf static