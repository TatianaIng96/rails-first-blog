class CommentsController < ApplicationController
    
  http_basic_authenticate_with name: "dhh", password: "123", 
  only: :destroy
  
  def create
    # Busca el articulo asociado
    @article = Article.find(params[:article_id]) 
    # Crea y guarda el comentarioaccedoo a todos los comentarios de ese articulo
    @comment = @article.comments.create(comment_params) 
    
    # Se envia al usuario de regreso al articulo
    redirect_to article_path(@article) 
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

    @comment.destroy
      
    redirect_to article_path(@article), status: :see_other
  end

  private
  
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
