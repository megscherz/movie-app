# Actor.create!([
#   {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly"},
#   {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"},
#   {first_name: "Kate", last_name: "Winslet", known_for: "Titanic"},
#   {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"},
#   {first_name: "Kate", last_name: "Winslet", known_for: "Titanic"},
#   {first_name: "Jennifer", last_name: "Lawrence", known_for: "Hunger Games series"},
#   {first_name: "George", last_name: "Clooney", known_for: "Oceans 11"},
#   {first_name: "Tom", last_name: "Holland", known_for: "Spider-Man"},
#   {first_name: "Kirsten", last_name: "Wiig", known_for: "Bridesmaids"},
#   {first_name: "Melissa", last_name: "McCarthy", known_for: "Bridesmaids"},
#   {first_name: "Paul", last_name: "Rudd", known_for: "I Love You, Man"},
#   {first_name: "Jennifer", last_name: "Lawrence", known_for: "Silver Linings Playbook"}
# ])

# Movie.create!([
#   { title: "Bridesmaids", year: 2011, plot: "A competition between the maid of honor and a bridesmaid threathen to upend the lift of an out-of-work pastry chef.", director: "Paul Feig", english: true },
#   { title: "Horrible Bosses", year: 2011, plot: "Three friends plot to kill their oppressive employers and of course, chaos ensues.", director: "Seth Gordon", english: true },
#   { title: "Bird Box", year: 2018, plot: "A post-apocolyptic horror movie about an unseen presence that drives most of society to suicide. A family, however, try to make it to safety.", director: "Sandra Bier", english: true },
#   { title: "Harry Potter and the Sorcerer's Stone", year: 2001, plot: "A young boy finds out that he's a wizard and can go to the best wizarding school in the country. The movie captures his first year at school and Harry learning all about himself and his family's past.", director: "Chris Columbus", english: true },
#   { title: "I Love You, Man", year: 2009, plot: "A man without friends needs a bestman for his wedding. He meets this strange man meet and become friends. Things are learned and in the end they are best friends.", director: "John Hamburg", english: true },
# ])

# Genre.create(
#   { name: "comedy" }
# )

# Genre.create(
#   { name: "thriller" }
# )

# Genre.create(
#   { name: "fantasy" },
# )

MovieGenre.create(
  { movie_id: 1,
    genre_id: 1 }
)

MovieGenre.create(
  { movie_id: 2,
    genre_id: 1 }
)

MovieGenre.create(
  { movie_id: 3,
    genre_id: 1 }
)

MovieGenre.create(
  { movie_id: 4,
    genre_id: 2 }
)

MovieGenre.create(
  { movie_id: 5,
    genre_id: 3 }
)
