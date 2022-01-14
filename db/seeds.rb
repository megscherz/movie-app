# actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
# actor.save

# actor = Actor.new({ first_name: "Kate", last_name: "Winslet", known_for: "Titanic" })
# actor.save

# actor = Actor.new({ first_name: "Jennifer", last_name: "Lawrence", known_for: "Hunger Games series" })
# actor.save

# actor = Actor.new({ first_name: "George", last_name: "Clooney", known_for: "Oceans 11" })
# actor.save

# actor = Actor.new({ first_name: "Melissa", last_name: "McCarthy", known_for: "Bridesmaids" })
# actor.save

# actor = Actor.new({ first_name: "Paul", last_name: "Rudd", known_for: "I Love You, Man" })
# actor.save

movie = Movie.new(title: "Bird Box", year: 2018, plot: "A post-apocolyptic horror movie about an unseen presence that drives most of society to suicide. A family, however, try to make it to safety.")
movie.save

movie = Movie.new(title: "Harry Potter and the Sorcerer's Stone", year: 2001, plot: "A young boy finds out that he's a wizard and can go to the best wizarding school in the country. The movie captures his first year at school and Harry learning all about himself and his family's past.")
movie.save
