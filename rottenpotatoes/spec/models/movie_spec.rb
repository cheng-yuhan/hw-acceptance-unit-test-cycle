require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "returns similar movies" do
    movie1 = Movie.create(title: 'knivesout', director: 'yiwei')
    movie2 = Movie.create(title: 'prisonbreak', director: 'yiwei')
    movie3 = Movie.create(title: '2012', director: 'cheng')
    expect(Movie.find_similar_movies('yiwei')).to eq [movie1, movie2]
  end
end
