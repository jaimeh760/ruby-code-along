require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/' do
    @user = {
      name: "#{params["fname"]} #{params["lname"]}",
      birthday: "#{params["bday"]}",
      email: "#{params["email"]}",
      picture_url: "#{params["pic"]}"
      }
    erb :dashboard
  end
  
  
  
end
