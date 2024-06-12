class CommentsController < ApplicationController
  before_action :set_post, only: %i[new create destroy]
  before_action :set_comment, only: :destroy

  def new
    @comment = Comment.new
    authorize @comment
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user

    authorize @comment

    if @comment.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity, flash: {
        error: "Por favor, verifique se preencheu corretamente todos os campos."
      }
    end
  end

  def destroy
    @comment.destroy
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
