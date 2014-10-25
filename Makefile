SATIS := $(shell which satis 2>/dev/null || echo satis/bin/satis)
COMPOSER := $(shell which composer.phar 2>/dev/null || which composer 2>/dev/null)

all: dist/packages.json

dist/packages.json: dist/.git $(SATIS)
	$(SATIS) build --no-html-output satis.json dist

dist/.git:
	git clone git@github.com:eventum/composer.git dist -b repo --depth=1

$(SATIS):
	$(COMPOSER) create-project composer/satis --stability=dev --keep-vcs --prefer-dist --no-dev
