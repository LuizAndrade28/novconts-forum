class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    # Busca de posts com base nos parâmetros de pesquisa
    @q = Post.ransack(params[:q])
    @posts = @q.result.includes(:user)
    # Ordenação dos posts com base no parâmetro sort_by
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
             end
  end
end
