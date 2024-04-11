<h1 align="center">Instructions</h1>

![Badge Developing](http://img.shields.io/static/v1?label=STATUS&message=DEVELOPING&color=GREEN&style=for-the-badge)

This project was made on:

* Ruby 3.3.0

* Rails 7.1.3.2

* Postgres 16.2 (on Docker)

* Ubuntu 22.04

To run the project:

dependencies:
```
gem install bundler
bundle install
```
database:

```
rails db:create
rails db:migrate
```
or
```
rails db:setup
```
and to start the server
```
rails s
```
Postgres on docker: 

image on [DockerHub](https://hub.docker.com/_/postgres):
```
docker pull postgres 
```
run container:
```
docker run -e  POSTGRES_PASSWORD=selected_password -d -p 5432:5432 -v /var/run/postgresql:/var/run/postgresql  postgres 
```
