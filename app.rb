require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    post '/new' do
      @new_pirate = Pirate.new(params)
      erb :'pirates/new'
    end

  end
end
