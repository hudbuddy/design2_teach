class AddArticleimageToArticleImages < ActiveRecord::Migration
  def change
    add_column :article_images, :articleimage, :string
  end
end
