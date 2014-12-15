class CreateArticleImages < ActiveRecord::Migration
  def change
    create_table :article_images do |t|
      t.belongs_to :learning_piece
      t.timestamps
    end
  end
end
