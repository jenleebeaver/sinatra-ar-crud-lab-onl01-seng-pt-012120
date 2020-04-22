
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to "/articles"
  end

#index
  get '/articles' do
    @article=params[:article]
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  post '/article' do
    erb :show
  end



  end

  end
end
