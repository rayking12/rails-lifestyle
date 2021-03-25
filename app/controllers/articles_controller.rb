class ArticlesController < ApplicationController
  before_action :require_login, only: %i[create new vote_for_article unvote_for_article]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)
    @article.author_id = current_user.id
    @article.category_ids = params[:article][:category_ids]

    if @article.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  def require_login
    redirect_to login_path unless current_user
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :body, :image)
  end
end
