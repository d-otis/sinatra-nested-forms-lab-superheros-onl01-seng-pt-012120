require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    get '/team' do

      erb :team
    end

    post '/teams' do
      @team = params[:team]
      binding.pry
      team = Team.new(@team)

      redirect to '/team'
    end



end
