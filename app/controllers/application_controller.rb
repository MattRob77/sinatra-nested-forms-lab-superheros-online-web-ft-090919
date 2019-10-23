require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb: super_hero 
    end 
    
    get '/teams' do 
      @team = Team.new(params[:team])
      
      params[:team][:heroes].each do |deets| 
        SuperHero.new(deets)
      end 
      @heroes = Super_Hero.all 
    end 
end