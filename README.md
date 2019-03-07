Eventum Composer repository
===========================

This is [composer](https://getcomposer.org/) repository to speed up packages installation in Eventum.

Contains:
  - PEAR packages used by Eventum
  - Third-party libraries lacking `composer.json` or having broken `composer.json`
  - Packages that needed fixes that upstream does not accept

To use this, Eventum `composer.json` should contain:

```json
	"repositories": [
		{
			"type": "composer",
			"url": "https://eventum.github.io/composer/"
		},
    ]
```

Head over to https://eventum.github.io/composer/ to browse available packages.

__NOTE__: actual composer repository is on [gh-pages](https://github.com/eventum/composer/tree/gh-pages) branch
