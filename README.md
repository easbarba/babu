# Babu
A Ruby on Rails Family Microblog. 

# Container

### start all containers 

> docker-compose up -d

### deploy all database migration 

> docker-compose exec app bin/rails db:migrate

### seed initial content 

> docker-compose exec app bin/rails db:seed

### run ad-hoc commands

> docker-compose exec app sh 

### inspect database

> docker-compose exec database psql -U postgres -d babu_development

### rebuild main app container
 
> docker-compose build app

# TODO

- stories category
- more tests
- internationalization
- slug urls
- slick routes
- production improvements & proper cloud deployment

