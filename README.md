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

Curricula -- Curriculum managing service, allows users to assemble collections of texts belonging to industry experts and famous
people. View collections of curricula from other users and relate other curricula on the site to the user using their preferences
or existing books or curricula.


  Models
  -----------
    User: unique user profiles
      authentication -- login, logout
      has_many curricula
      has_many subject(interests)
      has_many books --- generate "sub" Curriculum based on user's books (i.e. Rome / caesar)


   Curricula:
      Description
      belongs_to User
      has_many books

   Book:
      title, Description, cover photo(?), author (separate model?), year, pages
      has_many subjects
      has_many Curriculum


   Subject
     name
     has_many books
     




  Views
  ----------

    Login
