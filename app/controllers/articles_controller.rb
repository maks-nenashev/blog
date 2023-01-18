class ArticlesController < ApplicationController
 
   def index   # Wywod wsech zapisej!
      @articles = Article.all
   end

   def show  # Wywodim bazu po :ID
     @article = Article.find(params[:id])
   end

   def new  #создать - new (отобразить форму. GET)
   end
 
   def create #create (отправить форму. POST)   
       @article = Article.new(article_params)
    if @article.valid?
       @article.save 
       redirect_to @article #У нас происходит редирект на "show" поэтому представление --
                            #--"create" нам теперь не нужно, его можно удалить.
    else
       render action: 'new'
     end
   end
 #////////////////////////////////////////////////////////////////////////////////////
   private
 
   def article_params
     params.require(:article).permit(:title, :text)
   end
 
end
