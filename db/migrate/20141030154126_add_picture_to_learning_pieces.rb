class AddPictureToLearningPieces < ActiveRecord::Migration
  def change
    add_column :learning_pieces, :picture, :string
  end
end
