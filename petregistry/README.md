# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
rails g model pet name:text species:text
rails g model owner name:text
rails g model owners_pets owner:references pet:references --force-plural

* Database initialization
rake db:create
rake db:migrate

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
