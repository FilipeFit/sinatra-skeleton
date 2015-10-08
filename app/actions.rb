#Helper methods to handle the sessions
helpers do
  def current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id] 
  end
end

# Homepage (Root path)
get '/' do
  @title = "Home"
  erb :index
end

get '/movies' do
  # This is the variable who i can use to show all the movies
  @movies = Movie.all
  @title = "Movie"

  #binding.pry -- This command and a debug point in your company
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

#Do Login
post '/login' do
  #reading the parameters from the page
  email = params[:email]
  password = params[:password]
  #Try to find a user using the email
  user = User.find_by(email: email)
  #Did we find a user?
  #If found a user... do the password match
  if user && user.password == params[:password]
    redirect "/"
    #handle cookies saving the session of the user into the session of the website
    session[:id] = user.id
  else
    @error = "Email or password incorrect!!"
    erb :login
  end
end

post '/signup' do
  firstName = params[:firstName]
  lastName = params[:lastName]
  email = params[:email]
  password = params[:password]
  
  user = User.find_by(email: email)
  if user
    redirect "/signup"
  else
    user = User.create(fist_name: firstName, last_name: lastName, email: email, password: password )
    session[:user_id] = user.id
    redirect "/"
  end
end

post '/profile' do
  redirect '/'
end