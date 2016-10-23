

#----------------------------------------------
# require_relative '../../config/environment'

# class ApplicationController < Sinatra::Base

#   configure do
#     set :public_folder, 'public'
#     set :views, 'app/views'
#   end

# #CREATE
#   get '/posts/new' do
#     erb :new
#   end

#   post '/posts' do
#     @post = Post.create(params)
#     # @post.save
#     redirect to '/posts'
#   end

# #READ
#   get '/posts' do
#     @posts = Post.all #shows all of the posts. iterate over this and render each post on the page
#     erb :index
#   end

# #SHOW
#   get "/posts/:id" do #dynamic url?
#     #shows individual post by:
#     #Grabbing the id within the params of the post using ActiveRecord and set that equal to the new instance @post
#     @post = Post.find_by_id(params[:id])
#     erb :show
#   end

# #UPDATE
#   get "/posts/:id/edit" do
#       @post = Post.find_by_id(params[:id])
#       erb :edit
#   end


#   patch '/posts/:id' do  #updates a post
#     @post = Post.find_by_id(params[:id])
#     @post.name = params[:name]
#     @post.content = params[:content]
#     @post.save
#     # erb :show
#     redirect to "/posts/#{@post.id}"
#   end

#   #DELETE
#     delete '/posts/:id/delete' do
#       @post = Post.find_by_id(params[:id])
#       @post.delete
#       redirect to "/posts/#{@post.id}"
#     end
# end
