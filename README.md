# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails g model contact --generate model
rails db:migrate
rails g controller v1/contacts
bundle i
rails g model account name:string slug:string owner:references   
rails g rspec:model User
rails g rspec:install    
rspec spec/models/user_spec.rb
=======

