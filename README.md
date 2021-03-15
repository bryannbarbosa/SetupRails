# How to Run The Application

`bundle install` - Install all gems in Gem File

`docker-compose up -d` - Run Database Container (PostgreSQL)

You also must run all migration files in app.

`bundle exec rake db:create` - Create all Databases

`bundle exec rake db:migrate` - Run all Migrations

`bundle exec rake bootstrap:all` - Populate Database with an user and order

`make lint` - To validate code quality with Rubocop

`make unit` - To run tests with Rspec


Ruby version: `3.0.0`

Rails Version: `6.1.3`
