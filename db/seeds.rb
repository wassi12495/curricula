# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# reset db
Subject.destroy_all
 Book.destroy_all
 Curriculum.destroy_all
 CurriculumBook.destroy_all

# Users
obama = User.create(username: "obama", password: "michelle", password_confirmation: "michelle", first_name: "Barack", last_name: "Obama")
jeff = User.create(username: "amazon", password: "rich", password_confirmation: "rich", first_name: "Jeff", last_name: "Bezos")
josh = User.create(username: "Josh", password: "123", password_confirmation: "123", first_name: "Josh", last_name: "Wasserman")
greg = User.create(username: "Greg", password: "123", password_confirmation: "123", first_name: "Greg", last_name: "Driza")


# Build subjects
cs = Subject.create(name: "Computer Science")
music = Subject.create(name: "Music")
phil = Subject.create(name: "Philosophy")
art = Subject.create(name: "Art")
fic = Subject.create(name: "Fiction Lit")
history = Subject.create(name: "History")
psych = Subject.create(name: "Psychology")

# Build books

Book.create(title: "The Art of Computer Programming", author: "Donald Knuth", year: "1968", publisher: "Addison-Wesley", subject_id: cs.id)
