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
obama = User.create(username: "obama", password: "michelle", password_confirmation: "michelle", first_name: "Barack", last_name: "Obama", img_url:"http://internetbusinessmastermind.com/wp-content/uploads/barack-obama-official.jpg", biography: "Barack Hussein Obama II is an American politician who served as the 44th President of the United States from 2009 to 2017.")
jeff = User.create(username: "amazon", password: "rich", password_confirmation: "rich", first_name: "Jeff", last_name: "Bezos", img_url:"https://ffbsccn.files.wordpress.com/2013/08/jeffbezosceo_lg_jpg_280x280_crop_q95-1.jpg", biography: "Jeffrey Preston Bezos is an American technology and retail entrepreneur, investor, electrical engineer, computer scientist, and philanthropist,[5] best known as the founder, chairman, and chief executive officer of Amazon.com, the world's largest online shopping retailer.")
josh = User.create(username: "Josh", password: "123", password_confirmation: "123", first_name: "Josh", last_name: "Wasserman")
greg = User.create(username: "Greg", password: "123", password_confirmation: "123", first_name: "Greg", last_name: "Driza")


# Build subjects
cs = Subject.create(name: "Computer Science", img_url: "https://lh4.googleusercontent.com/gtFDaHlRdqczafvDSWQ9WduIxHkMIZt2T3s-fIE2A-WhF9mnlFSavfObi-P0NOVr_rcQSfpDvQkLPehwiiSHQ-LWGFo0VM0FbDFRhMn5VxVuf5sZyc0kB3KXNm-_yft5mbYAQIlR")
music = Subject.create(name: "Music", img_url:"https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/music-staff_b1d89oyes__F0000.png")
phil = Subject.create(name: "Philosophy", img_url:"http://i0.kym-cdn.com/photos/images/original/001/153/164/9d7.jpg")
art = Subject.create(name: "Art", img_url:"http://pawprintnews.com/wp-content/uploads/2016/09/Art.jpg")
fic = Subject.create(name: "Fiction Lit", img_url: "https://f.fwallpapers.com/images/science-fiction.jpg")
history = Subject.create(name: "History", img_url:"https://www.conncoll.edu/media/major-images/History.jpg")
psych = Subject.create(name: "Psychology", img_url:"https://www.timeshighereducation.com/sites/default/files/istock-500696260.jpg")

# Build books

art_comp = Book.create(title: "The Art of Computer Programming", author: "Donald Knuth", year: 1968, publisher: "Addison-Wesley", subject_id: cs.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51sS0cybQKL._AC_UL320_SR214,320_.jpg")
hamilton = Book.create(title: "Alexander Hamilton", author: "Ron Chernow", year: 2005, publisher: "Penguin Books", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51P1c42DyLL._SX322_BO1,204,203,200_.jpg")
constitution = Book.create(title: "US Constitution", author: "James Maddison", year:  1789, publisher: "'Merica", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/613cMYch4lL._AC_UL320_SR272,320_.jpg")
art_of_deal = Book.create(title: "Trump: The Art of the Deal", author: "Donald J. Trump", year:  2015, publisher: "Ballantine Books", subject_id: fic.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BB8cqHZ8L._SX322_BO1,204,203,200_.jpg")
dec_ind = Book.create(title: "The Declaration of Independence", author: "Thomas Jefferson et al.", year:  1776, publisher: "Continental Congress", subject_id: history.id, img_url: "https://www.loc.gov/rr/program/bib/ourdocs/Images/declaration.jpg")
change = Book.create(title: "Change We Can Believe In", author: "Barack Obama", year:  2008, publisher: "Random House", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51g2iEMBs4L._SX320_BO1,204,203,200_.jpg")




# Build Curriculum

obama_c1 = Curriculum.create(title: "Presidential History", description: "A deep dive into the history of the United States Presidency.", user_id: obama.id)
jeff_c1 = Curriculum.create(title: "Entrepreneurship ", description: "An Introduction to Entrepreneurship.", user_id: jeff.id)



#  Build Curriculum book links

CurriculumBook.create(book_id:hamilton.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:constitution.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:art_of_deal.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:dec_ind.id, curriculum_id: obama_c1.id)
#CurriculumBook.create(book_id:change.id, curriculum_id: obama_c1.id)
