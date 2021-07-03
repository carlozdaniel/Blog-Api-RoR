class PostController < ApplicationController
  # GET /post
  def index
    @posts = Post.where(published: true)
    render json: @posts, status: :ok
  end
  # GET /post/{id}
  def show
    @post = Post.find(params[:id])
    render json: @json, status: :ok
  end
end