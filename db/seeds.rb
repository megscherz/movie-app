# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

actor = Actor.new({ first_name: "Kate", last_name: "Winslet", known_for: "Titanic" })
actor.save

actor = Actor.new({ first_name: "Jennifer", last_name: "Lawrence", known_for: "Hunger Games series" })
actor.save

actor = Actor.new({ first_name: "George", last_name: "Clooney", known_for: "Oceans 11" })
actor.save
