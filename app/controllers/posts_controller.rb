class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post= Post.find(params[:id])
    @comentario = Comentario.new post_id:params[:id]
  end

end
