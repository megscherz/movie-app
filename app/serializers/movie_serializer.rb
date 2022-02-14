class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director, :english

  has_many :genres
  has_many :movie_genres
end
