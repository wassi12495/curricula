# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# reset db
Subject.destroy_all
# Book.destroy_all
# Curriculum.destroy_all
# BookSubject.destroy_all
# CurriculumBook.destroy_all

# Build subjects
Subject.create(name: "Computer Science")
Subject.create(name: "Music")
Subject.create(name: "Philosophy")
Subject.create(name: "Art")
Subject.create(name: "Fiction Lit")
Subject.create(name: "History")
Subject.create(name: "Psychology")

# Build books

# Book.create(title: "The Art of Computer Programming", author: "Donald Knuth", year: "1968", publisher: "Addison-Wesley")
