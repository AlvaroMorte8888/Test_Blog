class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end  

  def show
    @article = Article.find(params[:id])
  end

  def create # сохраняет статью в БД
    @article = Article.new(article_params)#Rails может быть инициализирована с помощью соответствующих атрибутов, 
    #которые будут автоматически привязаны к соответствующим столбцам базы данных. params[:article]содержит интересующие нас атрибуты
    
    if @article.save #ответственен за сохранение модели в базу данных.
      redirect_to @article
    else
      render 'new'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end  
end
