class ArticlesController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.order(created_at: :desc)
  end

  def show
  end

  def new
    @article = Article.new(params[:id])
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
  end

  def update
  end

  def destroy
    if @article.destroy
      redirect_to root_path, notice: '削除に成功しました'
    else
      redirect_to root_path, alert: '削除できませんでした'
  end


  private
  def find_post
    @article = Article.find(params[:id])
  end

  def article_params
  end
end
