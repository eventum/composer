SATIS := $(shell which satis 2>/dev/null || echo satis/bin/satis)
COMPOSER := $(shell which composer.phar 2>/dev/null || which composer 2>/dev/null)

all: dist/packages.json

dist/packages.json: dist/.git $(SATIS) Makefile satis.json
	test -d dist/include && mv dist/include dist/include.`date +%s`
	$(SATIS) build --no-html-output satis.json dist
	rm -rf dist/include.*
	cd dist && git add -A .

dist/.git:
	git clone git@github.com:eventum/composer.git dist -b repo --depth=1

$(SATIS):
	$(COMPOSER) create-project composer/satis --stability=dev --keep-vcs --prefer-dist --no-dev
