require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

get '/posts' do
  @posts = Post.all
  erb :'index'
end


get '/posts/new' do
  erb :'new'
end

post '/posts' do
  @post = Post.create(params)
  redirect to '/posts'
end


get '/posts/:id' do
  @post = Post.find_by_id(params[:id]) #without this, the 
  erb :'show'
end
#UPDATE
  get "/posts/:id/edit" do
      @post = Post.find_by_id(params[:id])
      erb :'edit'
  end


  patch '/posts/:id' do  
    @post = Post.find_by_id(params[:id])
    @post.name = params[:name]
    @post.content = params[:content]
    @post.save
    erb :'show'
    # redirect to "/posts/#{@post.id}"
  end

  #DELETE
    delete '/posts/:id/delete' do

      @post = Post.find_by_id(params[:id])
      @posts = Post.all
      @post.delete
      erb :'index'
      #redirect to '/posts' #why can't this line work instead of erb :index when it leads to the same page anyway/ and if /posts and / presents the same page
    end
end

