require 'sinatra/base'

class Bookmark < Sinatra::Base
    enable :sessions

    get '/' do
        'Bookmark Manager'
    end

    post '/login' do
        session[:user_name]=params[:user_name]
        session[:password]=params[:password]
        redirect '/profile'
    end

    get '/profile' do
        erb :profile
    end
    
    get '/bookmarks' do
        p ENV

        @bookmark = Bookmark.all
        erb :'bookmarks/index'
    end
        
    run! if app_file == $0
end
