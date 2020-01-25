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
      pirate_name = params[:pirate][:name]
      pirate_weight = params[:pirate][:weight]
      pirate_height = params[:pirate][:height]
      ships_array = params[:pirate][:ships] # array of hashes
      binding.pry
      @pirate = Pirate.new(pirate_name, pirate_weight, pirate_height)
      @ship = Ship.new(params[pirate[ship][name]])
      erb :'pirates/show'
    end

  end
end
