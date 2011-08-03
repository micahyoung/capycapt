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

License
-------
MIT http://www.opensource.org/licenses/mit-license.php
