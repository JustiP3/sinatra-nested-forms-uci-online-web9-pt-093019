require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      binding.pry
      @pirate = Pirate.new(params[name],params[weight],params[height])
      @ship = Ship.new(params[pirate[ship][name]])
      erb :'pirates/show'
    end

  end
end
