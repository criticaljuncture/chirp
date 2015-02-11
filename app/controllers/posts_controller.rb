class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order("created_at DESC")
  end

  def create
    current_user.posts.create(post_params)
    redirect_to root_url, notice: "Chirp posted."
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
