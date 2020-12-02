class ArticlesController < ApplicationController
  
  def new
    
  end

  def create # сохраняет статью в БД
    @article = Article.new(article_params)#Rails может быть инициализирована с помощью соответствующих атрибутов, 
    #которые будут автоматически привязаны к соответствующим столбцам базы данных. params[:article]содержит интересующие нас атрибуты
    
    @article.save #ответственен за сохранение модели в базу данных.
    redirect_to @article  
  end
  
  private
    def article_params
      params.require(:article).permit(:titel, :text)
    end  
end
