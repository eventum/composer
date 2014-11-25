Eventum Composer repository
===========================

This is composer repository to speed up packages installation in Eventum.

Contains:
  - PEAR packages used by Eventum
  - Smarty 3.1.x package

To use this, Eventum `composer.json` should contain:

```json
	"repositories": [
		{
			"type": "composer",
			"url": "https://raw.githubusercontent.com/eventum/composer/repo/"
		},
```

NOTE: actual composer repository is on [repo](https://github.com/eventum/composer/tree/repo) branch