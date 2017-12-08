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
greg = User.create(username: "GregD", password: "123", password_confirmation: "123", first_name: "Greg", last_name: "Driza", img_url: "https://ibb.co/cai4vG", biography: "Greg Driza is a musician and programmer in NYC.")
seth = User.create(username: "Seth", password: "123", password_confirmation: "123", first_name: "Seth", last_name: "Barden", img_url: "https://static1.squarespace.com/static/54514ccfe4b02e02b92e7a24/569ea29ea2bab8156eade875/5758aa081d07c0947ef44c12/1469653770499/Seth-48.jpg?format=500w", biography: "Bassist, programmer, philosopher king.")
priyam = User.create(username: "Priyam", password: "123", password_confirmation: "123", first_name: "Priyam", last_name: "Sarma", img_url: "", biography: "Developer in NYC.")


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

man_and_his_symbols = Book.create(title: "Man and His Symbols", author: "Carl Jung", year: 1964, publisher: "Dell Publishing Co., Inc.", subject_id: psych.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51Ecst68kyL._SX303_BO1,204,203,200_.jpg")
sapiens = Book.create(title: "Sapiens, A Brief History of Humankind", author: "Carl Jung", year: 1964, publisher: "Harper", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51zJS6PmxbL.jpg")
gay_science = Book.create(title: "The Gay Science", author: "Friedrich Nietzsche", year: 1882, publisher: "Harper", subject_id: phil.id, img_url: "https://images.penguinrandomhouse.com/cover/9780307434173")
zen = Book.create(title: "Zen and the Art of Motorcycle Maintenance", author: "Robert Pirsig", year: 1970, publisher: "Harper", subject_id: phil.id, img_url: "https://pixel.nymag.com/imgs/daily/science/2017/04/26/26-zen-and-the-art-of-motorcycle-maintenance.w245.h368.2x.jpg")
brothers = Book.create(title: "The Brothers Karamazov", author: "Fydor Dostoyevsky", year: 1880, publisher: "The Russian Messenger", subject_id: fic.id, img_url: "http://2.bp.blogspot.com/-HG7mu840vbs/VkNjcYd3M1I/AAAAAAAAGc0/_npzsuuJSTw/s1600/Fyodor%2BDostoyevsky%252C%2BThe%2BBrothers%2BKaramazov%2B%2B3.jpg")
geb = Book.create(title: "Gödel, Escher, Bach: an Eternal Golden Braid", author: "Douglas Hofstadter", year: 1979, publisher: "Basic Books", subject_id: music.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/91ZOyQFej7L.jpg")

freakonomics = Book.create(title: "Freakonomics", author: "Steven Levit", year: 1964, publisher: "Dell Publishing Co., Inc.", subject_id: history.id, img_url: "http://freakonomics.com/wp-content/uploads/2016/01/Freakonomics-Paperback-298x450.jpg")
guns_germs = Book.create(title: "Guns, Germs, and Steel", author: "Jared Diamond", year: 1997, publisher: "W.W. Norton", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51LVx6UrW5L._SX326_BO1,204,203,200_.jpg")
atlas_shrugged = Book.create(title: "Atlas Shrugged", author: "Ayn Rand", year: 1957, publisher: "Random House", subject_id: fic.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51jOZAjqWCL._SX290_BO1,204,203,200_.jpg")
white_tiger = Book.create(title: "The White Tiger", author: "Arvind Adiga", year: 2008, publisher: "Atlantic Books", subject_id: fic.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/91VoUeWl3oL.jpg")
big_short = Book.create(title: "The Big Short", author: "Michael Lewis", year: 2011, publisher: "W.W. Norton", subject_id: history.id, img_url: "http://madisontaylor.blogs.thetimesnews.com/files/2016/08/big-short.jpg")
# Build Curriculum

east_of_e = Book.create(title: "East of Eden", author: "John Steinbeck", year: 1952, publisher: "Viking Press", subject_id: fic.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51H7jYMNsxL._SX333_BO1,204,203,200_.jpg")
musico = Book.create(title: "Musicophilia", author: "Oliver Sacks", year: 2007, publisher: "W.W. Norton", subject_id: music.id, img_url: "http://i1.wp.com/images.gr-assets.com/books/1380410083l/7969311.jpg?resize=300,450")
twilight = Book.create(title: "Twilight of the Idols", author: "Friedrich Nietzsche", year: 1889, publisher: "Random House", subject_id: phil.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51aEJCBjMEL._SX321_BO1,204,203,200_.jpg")
dune = Book.create(title: "Dune", author: "Frank Herbert", year: 1965, publisher: "Chilton Books", subject_id: fic.id, img_url: "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/1/29/1422551324715/2fedfdf2-8c99-4d1a-8ef9-c38aa66aa736-bestSizeAvailable.jpeg?w=300&q=55&auto=format&usm=12&fit=max&s=84104132b468fcf8b81a29710e9bf1b4")
malcolmx = Book.create(title: "The Autobiography of Malcolm X", author: "Alex Haley and Malcolm X", year: 1965, publisher: "W.W. Norton", subject_id: history.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/51U0ujmaDAL._SX235_BO1,204,203,200_.jpg")


r_of_d = Book.create(title: "The Remains of the Day", author: "Kazuo Ishiguro", year: 1989, publisher: "W.W. Norton", subject_id: fic.id, img_url: "https://images.gr-assets.com/books/1327128714l/28921.jpg")
creation = Book.create(title: "Creation: Life and How to Make It", author: "Steve Grand", year: 2000, publisher: "Random House", subject_id: cs.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/41xekIE3UVL._SX330_BO1,204,203,200_.jpg")
blaxk_swan = Book.create(title: "The Black Swan", author: "Nassim Taleb", year: 2000, publisher: "RandomHouse", subject_id: psych.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/41tu1ak888L._SX322_BO1,204,203,200_.jpg")


obama_c1 = Curriculum.create(title: "Presidential History", description: "A deep dive into the history of the United States Presidency.", user_id: obama.id)
jeff_c1 = Curriculum.create(title: "Entrepreneurship ", description: "An Introduction to Entrepreneurship.", user_id: jeff.id)
greg_c1 = Curriculum.create(title: "How to be A person in the World", description: "These are the books that changed the way I look at myself, others, and the world. I think this is essential reading for everyone.", user_id: greg.id)
seth_c1 = Curriculum.create(title: "Seth Explains the Stars", description:"I keep a very long list of every book that I have ever read on my phone. Here are a few of my favorites.", user_id: seth.id)
priyam_c1 = Curriculum.create(title: "Money and Power", description: "You need to read these books!", user_id: priyam.id)


CurriculumBook.create(book_id:r_of_d.id, curriculum_id: jeff_c1.id)
CurriculumBook.create(book_id:creation.id, curriculum_id: jeff_c1.id)
CurriculumBook.create(book_id:blaxk_swan.id, curriculum_id: jeff_c1.id)
CurriculumBook.create(book_id:atlas_shrugged.id, curriculum_id: jeff_c1.id)
CurriculumBook.create(book_id:big_short.id, curriculum_id: jeff_c1.id)



CurriculumBook.create(book_id:east_of_e.id, curriculum_id: seth_c1.id)
CurriculumBook.create(book_id:musico.id, curriculum_id: seth_c1.id)
CurriculumBook.create(book_id:twilight.id, curriculum_id: seth_c1.id)
CurriculumBook.create(book_id:dune.id, curriculum_id: seth_c1.id)
CurriculumBook.create(book_id:malcolmx.id, curriculum_id: seth_c1.id)

CurriculumBook.create(book_id:freakonomics.id, curriculum_id: priyam_c1.id)
CurriculumBook.create(book_id:guns_germs.id, curriculum_id: priyam_c1.id)
CurriculumBook.create(book_id:atlas_shrugged.id, curriculum_id: priyam_c1.id)
CurriculumBook.create(book_id:white_tiger.id, curriculum_id: priyam_c1.id)
CurriculumBook.create(book_id:big_short.id, curriculum_id: priyam_c1.id)


#  Build Curriculum book links

CurriculumBook.create(book_id:hamilton.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:constitution.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:art_of_deal.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:dec_ind.id, curriculum_id: obama_c1.id)
CurriculumBook.create(book_id:change.id, curriculum_id: obama_c1.id)

CurriculumBook.create(book_id:man_and_his_symbols.id, curriculum_id: greg_c1.id)
CurriculumBook.create(book_id:sapiens.id, curriculum_id: greg_c1.id)
CurriculumBook.create(book_id:gay_science.id, curriculum_id: greg_c1.id)
CurriculumBook.create(book_id:zen.id, curriculum_id: greg_c1.id)
CurriculumBook.create(book_id:brothers.id, curriculum_id: greg_c1.id)
CurriculumBook.create(book_id:geb.id, curriculum_id: greg_c1.id)

# Freakonomics, Non-Fiction
# The White Tiger, Picaresque Fiction
# The Big Short, Finance
# Atlas Shrugged, Philosophical fiction, Science Fiction, Mystery, Romance novel
# Guns Germs and Steel, Historical

#seth
#John Steinbeck, East of Eden, Grapes of Wrath, The Pearl, Winter of our Discontent
#hemingway For whome the bell tolls, Farewell to Arms,
#Oliver Sack Musicophilia, Searching For the Sound, Miles, Monk's bio
#science fiction
#Embassy Town, #3 body problem, Enders Game, Xenocide, Speaker for the dead, Star is my destination, Dune, No Country for old Men
#androids dream of electric sheep,
#Philosophy- Twilight of the Idols and The Antichrist, Grist for the Mil, Way of the peaceful warrior
#Non-fiction - Autobio of malcomx Lord of the Rings: All of them. Narnia. 1984. Catcher And the Rhye
#god of small things.
