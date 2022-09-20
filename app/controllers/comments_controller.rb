class CommentsController < ApplicationController
    
  http_basic_authenticate_with name: "dhh", password: "secret", 
  only: :destroy
  
  def create
      @article = Article.find(params[:article_id]) # busca el articulo asociado
      @comment = @article.comments.create(comment_params) #crea y guarda el comentarioaccedoo a todos los comentarios de ese articulo
      
      redirect_to article_path(@article) # se envia al usuario de regreso al articulo
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
