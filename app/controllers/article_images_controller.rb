class ArticleImagesController < ApplicationController

    def new

    end
    def create
      @article_image = ArticleImage.new(article_image_params)
      if @article_image.save
        redirect_to :controller => 'learning_pieces', :action => 'edit', :id => article_image_params[:learning_piece_id]
      else

      end
    end

    def article_image_params
      params.require(:article_image).permit(:learning_piece_id, :articleimage)
    end

end
