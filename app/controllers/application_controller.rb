
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
    @articles = Article.all #here we are using ActiveRecord
    erb :index
  end

#new
  get '/articles/new' do
    @article = Article.new
    erb :new
  end

#create
  post '/article' do
    @article = Article.create(params)
    redirect to "/articles/#{ @article.id }"
    erb :show
  end

  # show
 get "/articles/:id" do
   @article = Article.find(params[:id])
   erb :show
 end

#edits
 get '/articles/:id/edit' do
   
   erb :edit
 end

end
