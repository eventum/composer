Eventum Composer repository
===========================

This is [composer](https://getcomposer.org/) repository to speed up packages installation in Eventum.

Contains:
  - PEAR packages used by Eventum
  - Various third-party libraries lacking `composer.json`

To use this, Eventum `composer.json` should contain:

```json
	"repositories": [
		{
			"type": "composer",
			"url": "https://eventum.github.io/composer/"
		},
```

NOTE: actual composer repository is on [gh-pages](https://github.com/eventum/composer/tree/gh-pages) branch and published at https://eventum.github.io/composer/.
