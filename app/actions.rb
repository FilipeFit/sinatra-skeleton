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

get '/profile' do
  @title = "Profile"
  erb :profile
end

get '/signup' do
  @title = "signup"
  erb :signup
end

post '/login' do
  redirect '/'
end

post '/signup' do
  redirect '/'
end

post '/profile' do
  redirect '/'
end