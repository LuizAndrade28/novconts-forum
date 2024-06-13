class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  before_action :set_post, only: %i[show edit update destroy]

  def index
    # Counting the total number of posts
    @posts_count = policy_scope(Post).count

    # Searching for owner posts and sorting them
    @posts = policy_scope(Post).page(params[:page]).per(4)
    case params[:sort_by]
    when "created_at_asc"
      @posts = @posts.order(created_at: :asc)
    when "created_at_desc" || ""
      @posts = @posts.order(created_at: :desc)
    when "title_asc"
      @posts = @posts.order(title: :asc)
    when "title_desc"
      @posts = @posts.order(title: :desc)
    else
      @posts
    end
  end

  def show
    # Searching for posts based on ID parameters
    @previous_post = Post.where("id < ?", @post.id).order(id: :desc).first
    @next_post = Post.where("id > ?", @post.id).order(id: :asc).first

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
      redirect_to post_path(@post) || root_path, notice: 'Post criado com sucesso.'
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
      redirect_to request.referer || root_path, notice: 'Post atualizado com sucesso.'
    else
      render :edit, status: :unprocessable_entity, flash: {
        error: "Por favor, verifique se preencheu corretamente todos os campos."
      }
    end
  end

  def destroy
    @post.destroy
    if @post.user == current_user
      redirect_to request.referer, notice: 'Post deletado com sucesso.'
    else
      redirect_to root_path, notice: 'Post deletado com sucesso.'
    end
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
