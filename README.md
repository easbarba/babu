# Depot 
Ruby on Rails App from the book Agile Web Development with Rails 6

# Container

## start all containers 

> docker-compose up -d

## deploy database migration 

> docker-compose exec app bin/rails db:migrate

## seed initial content 

> docker-compose exec app bin/rails db:seed

## run ad-hoc commands

> docker-compose exec app bash 

## rebuild main app container
 Mostly needed for additional gems.

> docker-compose build app
