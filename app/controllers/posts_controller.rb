class PostsController < ApplicationController
  
  get '/posts' do 
    @posts = Post.all
    erb :'/posts/index'
  end
  
  get '/posts/new' do 
    erb :"posts/new"
  end
  
  get '/posts/:id' do 
    @post = Post.find(params[:id])
    erb :"/posts/show"
  end
  
  post '/posts' do 
    post = Post.create(params)
    redirect "/posts/#{post.id}"
  end
  
  get '/posts/:id/edit' do  #load edit form
    @post = Post.find_by_id(params[:id])
    erb :"/posts/edit"
  end
 
  patch '/posts/:id' do #edit action
    @post = Post.find_by_id(params[:id])
    @post.update(params[:post])
    redirect to "/posts/#{@post.id}"
  end
  
end