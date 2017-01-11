# Update APP skeleton for CakePHP

[![Build Status](https://img.shields.io/travis/cakephp/app/master.svg?style=flat-square)](https://travis-ci.org/cakephp/app)
[![License](https://img.shields.io/packagist/l/cakephp/app.svg?style=flat-square)](https://packagist.org/packages/cakephp/app)

A skeleton for creating applications with [CakePHP](http://cakephp.org) 3.x.

The framework source code can be found here: [cakephp/cakephp](https://github.com/cakephp/cakephp).

This is updated cakephp skeleton application to make easier setup process for ca plugins.

## Installation

1. Download [Composer](http://getcomposer.org/doc/00-intro.md) or update `composer self-update`.
2. Run `php composer.phar create-project --prefer-dist jdmaymeow/app [app_name]`.

If Composer is installed globally, run
```bash
composer create-project --prefer-dist jdmaymeow/app [app_name]
```

## Deploy with docker-compose

```bash
git clone https://github.com/asunay/blog-test.git
cd blog-test
composer install
docker-compose up -d
docker exec blogtest_cakeapp_1 chmod 777 -R tmp
docker exec blogtest_cakeapp_1 chmod 777 -R logs
docker exec blogtest_cakeapp_1 chmod 777 -R webroot/data
docker exec blogtest_cakeapp_1 bin/cake migrations migrate -p CakeAuth
docker exec blogtest_cakeapp_1 bin/cake migrations migrate -p CakeContent
docker exec blogtest_cakeapp_1 bin/cake migrations migrate -p CakeTaxonomy
```
## Deploy with cakeapp

```bash
cakeapp deploy blog --repository="https://github.com/asunay/blog-test.git"
docker exec blog_cakeapp_1 bin/cake migrations migrate -p CakeAuth
docker exec blog_cakeapp_1 bin/cake migrations migrate -p CakeContent
docker exec blog_cakeapp_1 bin/cake migrations migrate -p CakeTaxonomy
```

You should now be able to visit the path to where you installed the app and see the default home page.

## Configuration

Read and edit `config/app.php` and setup the 'Datasources' and any other
configuration relevant for your application.

## Code Advent Configuration file

Code Advent (CA) plugins will use this file to read some configurations. You can edit this file at `config/codeadvent.json`.
