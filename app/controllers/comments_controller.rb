class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:article_id]) # busca el articulo asociado
      @comment = @article.comments.create(comment_params) #crea y guarda el comentarioaccedoo a todos los comentarios de ese articulo
      
      redirect_to article_path(@article) # se envia al usuario de regreso al articulo
    end
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
  end
  