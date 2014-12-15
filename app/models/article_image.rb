class ArticleImage < ActiveRecord::Base
  belongs_to  :learning_piece
  mount_uploader :articleimage, ArticleimageUploader
end
