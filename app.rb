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
      pirate_name = {name => params[:pirate][:name]}
      pirate_weight = {weight => params[:pirate][:weight]}
      pirate_height = {height => params[:pirate][:height]}
      ships_array = params[:pirate][:ships] # array of hashes

      @pirate = Pirate.new(pirate_name, pirate_weight, pirate_height)
      @ships = ships_array.map do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      erb :'pirates/show'
    end

  end
end
