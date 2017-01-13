PHP := php -dmemory_limit=-1
SATIS := $(shell which satis 2>/dev/null || echo satis/bin/satis)
COMPOSER := $(shell which composer.phar 2>/dev/null || which composer 2>/dev/null)

all: dist/packages.json

dist/packages.json: dist/.git $(SATIS) Makefile satis.json
	$(PHP) $(SATIS) build satis.json dist

dist/.git:
	git clone git@github.com:eventum/composer.git dist -b gh-pages --depth=1

$(SATIS):
	$(PHP) $(COMPOSER) create-project composer/satis --stability=dev --keep-vcs --prefer-dist --no-dev
