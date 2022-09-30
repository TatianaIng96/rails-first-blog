class CommentsController < ApplicationController

  before_action :authenticate_user!
  
  def create
    @article = Article.find(params[:article_id]) # busca el articulo asociado
    @comment = @article.comments.create(comment_params.merge(user_id: current_user.id)) #crea y guarda el comentarioaccedoo a todos los comentarios de ese articulo
    
    redirect_to article_path(@article) # se envia al usuario de regreso al articulo
  end

  def destroy
    puts (current_user.id)
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :status)
    end
  end
