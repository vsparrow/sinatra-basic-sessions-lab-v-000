require_relative 'config/environment'

class App < Sinatra::Base
  # Set up a controller action that responds to a GET request to the route '/'.
  # You'll want this action to render an erb file,index.erb.
  get '/' do
    erb :index
  end
  # The controller action /checkout, should take the params from the form and add it to the session hash.
  #  The key should be item and the value should be the item the user entered to the purchase.
  #  Make sure to store the session hash in an instance variable that you can access in the views.
  post '/checkout' do
    session["item"]=params["item"]
    session[:item]=params["item"]
    @session=session
    @params = params
    erb :checkout
  end



end
