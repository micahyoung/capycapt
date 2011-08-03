Example Installation
==================
* Platform: Ubuntu Server 11.04 (ex: ami-06ad526f)
* Install dependencies

```bash
# apt-get install ruby git
# apt-get install build-essential libqt4-dev libxml2-dev libxslt1-dev
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
