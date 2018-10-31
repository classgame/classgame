# Courses Plataform - ClassGame #
---

## Screens: ##
---
Show Content's Course:

<p align="center">
  <img src="https://media.giphy.com/media/oHIi0LMnvoube/giphy.gif" alt="classgame content"/>
</p>

Welcome:

![](https://raw.githubusercontent.com/classgame/classgame/develop/real-images/welcome.jpg)

Dashboard:

![](https://raw.githubusercontent.com/classgame/classgame/develop/real-images/Dashboard.jpg)

Courses:

![](https://raw.githubusercontent.com/classgame/classgame/develop/real-images/courses.jpg)

Content:

![](https://raw.githubusercontent.com/classgame/classgame/develop/real-images/conteudos.jpg)


## Ruby Version: ##
* 2.2.1
## Rails Version ##
* 4.2.3

-------------

## Configuration ##

* database.yml

  If you are working in a new local, configure your database.yml. Change the password column for the same password of your MySQL Database.

## Development ##

To start your development environment follow these steps:
```
# start dependencies, like mysql, with docker
docker-compose up -d
# install gems
bundle install
# setup database
bundle exec rake db:setup
# start rails server
bundle exec rails server
```
