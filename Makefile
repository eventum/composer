SATIS := $(shell which satis 2>/dev/null || echo satis/bin/satis)
COMPOSER := $(shell which composer.phar 2>/dev/null || which composer 2>/dev/null)

all: $(SATIS)
	$(SATIS) build --no-html-output satis.json dist

$(SATIS):
	$(COMPOSER) create-project composer/satis --stability=dev --keep-vcs --prefer-dist --no-dev
