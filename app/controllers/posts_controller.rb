class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = policy_scope(Post)
  end

  def show
    @comments = Comment.where(post: @post)
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    authorize @post

    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity, flash: {
        error: "Por favor, verifique se preencheu corretamente todos os campos."
      }
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity, flash: {
        error: "Por favor, verifique se preencheu corretamente todos os campos."
      }
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
