# Homepage (Root path)
get '/' do
  @title = "Home"
  erb :index
end

get '/movies' do
  # This is the variable who i can use to show all the movies
  @movies = Movie.all
  @title = "Movie"
  erb :movies
end

get '/login' do
    erb :login
end