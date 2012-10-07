require 'spec_helper'

describe MoviesController do
  describe 'searching TMDB' do
    it 'should call the model method that looks up movies directed by a specific director' do
      fake_results = [mock('movie1'), mock('movie2')]
      Movie.should_receive(:find_movies_with_director).with('Christopher Nolan').and_return(fake_results) #model needs to find the movies given a specific director
      post :find_similar_movies, {:search_terms => 'Christopher Nolan'}
    end
    it 'should select the Search Results template for rendering'
    it 'should make the TMDb search results available to that template'
  end
end
