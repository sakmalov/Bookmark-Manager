require 'sinatra/base'

class Bookmark < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/login' do
        session[:user_name]=params[:user_name]
        session[:password]=params[:password]
        redirect '/profile'
    end

    get '/profile' do
        erb :profile
    end
    
    get '/bookmark' do
        erb :bookmark
    end
        
    run! if app_file == $0
end
