CapyCapt
========
Simple web app for capturing live screenshots of another web site. Uses [Capybara-webkit's](https://github.com/thoughtbot/capybara-webkit) headless browser on [Sinatra](http://sinatrarb.com).

Dependencies
------------
All capybara-webkit's [dependencies](https://github.com/thoughtbot/capybara-webkit/blob/master/README.md) must be met. Does not run on Heroku.

Usage
-----
* Deploy CapyCapt as a normal Sinatra app.
* Get snapshot by specifying URL (uri-encoded) in the query string:
	* http://mysite/?url=http://m.meetup.com
	* `height` and `width` can be optionally be set: `&width=1024&height=1024`

Example Installation
--------------------
* Platform: Ubuntu Server 11.04 (ex: ami-06ad526f)
* Install dependencies

```bash
$ apt-get install ruby git
$ apt-get install build-essential libqt4-dev libxml2-dev libxslt1-dev
```

* Clone & test run

```bash
$ cd your-www-dir
$ git clone git://github.com/micahyoung/capycapt.git
$ cd capycapt
$ gem install bundler
$ bundle install
$ thin start
```

* Deploy

License
-------
MIT http://www.opensource.org/licenses/mit-license.php
