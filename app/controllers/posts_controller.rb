class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    post = Post.new params[:post]
    post.user_id = current_user.id

    post.save

    redirect_to stream_path(post.stream_id)
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.update_attributes params[:post]

    @post.save

    redirect_to stream_path(@post.stream_id)
  end

  def destroy
    post = Post.find params[:id]
    post.destroy

    redirect_to stream_path(post.stream_id)
  end

end