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
      binding.pry
      team = Team.new(params[:team])

      params[:team][:members].each do |member|
        new_member = Hero.new()
      end
      redirect to '/team'
    end



end
