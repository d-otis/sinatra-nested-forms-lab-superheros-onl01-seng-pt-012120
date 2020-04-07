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

      team = Team.new(params[:team])
      binding.pry
      params[:team][:members].each do |member|
        new_member = Hero.new(member)
      end
      redirect to '/team'
    end



end
