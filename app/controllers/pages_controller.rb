class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    # Searching for posts based on search parameters
    @q = Post.ransack(params[:q])
    @posts = @q.result.includes(:user).page(params[:page]).per(5)

    # Sorting posts based on the sort_by parameter
    @posts = case params[:sort_by]
             when "created_at_asc"
               @posts.order(created_at: :asc)
             when "created_at_desc"
               @posts.order(created_at: :desc)
             when "title_asc"
               @posts.order(title: :asc)
             when "title_desc"
               @posts.order(title: :desc)
             else
               @posts
             end.order(created_at: :desc) # Default sorting
  end
end
