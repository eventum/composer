Eventum Composer repository
===========================

This is composer repository to speed up packages installation in Eventum.

Contains:
  - PEAR packages used by Eventum

To use this, Eventum `composer.json` should contain:

```json
	"repositories": [
		{
			"type": "composer",
			"url": "https://raw.githubusercontent.com/eventum/composer/repo/"
		},
```

NOTE: actual composer repository is on `repo` branch
