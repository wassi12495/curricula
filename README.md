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

Books -- Organizing books based on a topic and which books to read first (for ex)


  User -- Model

    login -- provide unique functionality
    Collections
    books thru collections


  curriculums -- model
    belongs to User
    has_many subjects

  Subject -- model

    type
    has_many books
    belongs_to collection



  Books -- model

    content
    title
    rank
    subject




  expert rated sources

  categories of subjects
