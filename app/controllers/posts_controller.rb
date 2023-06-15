class PostsController < ApplicationController
  def index
    @post = Post.all()
  end

  def form
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to exito_path
    else
      render :new
    end
  end

  def success
  end

  def posts_params
    params.require(:post).permit(:title, :content, :url)
  end
end
