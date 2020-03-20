class ArticlesController < ApplicationController
    
    def index
        @articles = Article.order('created_at DESC')
    end
    
    def show
        @article = Article.find(params[:id])
    end

    def new
    end

    def create
        @article = Article.new(article_params)
        if @article.valid?
            @article.save
            redirect_to @article
        else
            render action: 'new'
        end
    end

    def article_params
        params.require(:article).permit(:title, :text)
    end
end
