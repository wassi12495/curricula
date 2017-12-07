# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# reset db
User.destroy_all
Subject.destroy_all
 Book.destroy_all
 Curriculum.destroy_all
 CurriculumBook.destroy_all

# Users
obama = User.create(username: "obama", password: "michelle", password_confirmation: "michelle", first_name: "Barack", last_name: "Obama", img_url:"http://internetbusinessmastermind.com/wp-content/uploads/barack-obama-official.jpg")
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

art_comp = Book.create(title: "The Art of Computer Programming", author: "Donald Knuth", year: 1968, publisher: "Addison-Wesley", subject_id: cs.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51sS0cybQKL._AC_UL320_SR214,320_.jpg")
hamilton = Book.create(title: "Alexander Hamilton", author: "Ron Chernow", year: 2005, publisher: "Penguin Books", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51P1c42DyLL._SX322_BO1,204,203,200_.jpg")
constitution = Book.create(title: "US Constitution", author: "James Maddison", year:  1789, publisher: "'Merica", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/613cMYch4lL._AC_UL320_SR272,320_.jpg")
art_of_deal = Book.create(title: "Trump: The Art of the Deal", author: "Donald J. Trump", year:  2015, publisher: "Ballantine Books", subject_id: fic.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BB8cqHZ8L._SX322_BO1,204,203,200_.jpg")




# Build Curriculum

obama_c1 = Curriculum.create(title: "Presidential History", description: "A deep dive into the history of the United States Presidency.", user_id: obama.id)
jeff_c1 = Curriculum.create(title: "Entrepreneurship ", description: "An Introduction to Entrepreneurship.", user_id: jeff.id)



#  Build Curriculum book links

CurriculumBook.create(book_id:hamilton.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:constitution.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:art_of_deal.id, curriculum_id: obama_c1.id)
