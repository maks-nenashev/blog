class CommentsController < ApplicationController
                                                      # Zapret na komit bez regestracii
  before_action :authenticate_user!, :only => [:create]# Blokerowka registracii!

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        @comment = current_user.username 
        redirect_to article_path(@article)
      end
    
      def destroy
        @article = Article.find(params[:post_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
      end
      private
    
    def comment_params
        params.require(:comment).permit(:author, :body)

        
      end


end

#Проверим форму, добавив данные. И, посмотрим в рейлс-консоли

#  Comment.last
#  Comment.all
#  @article = Article.find(1)
#  @article.comments