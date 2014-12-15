class RemovePictureFromLearningPieces < ActiveRecord::Migration
  def change
    remove_column :learning_pieces, :picture
  end
end
