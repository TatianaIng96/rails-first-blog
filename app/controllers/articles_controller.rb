class ArticlesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params.merge(user_id: current_user.id))

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity # devuelva al navegador un código 422
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    puts ("Testing Destroy")
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end
  
  def follow
    user = User.find_by(id: params[:id])
    current_user.follow(user)

    redirect_to request.referrer
  end
  
  def unfollow
    user = User.find_by(id: params[:id])
    current_user.stop_following(user) 
    
    redirect_to request.referrer
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
