class AddLpimageToLearningPieces < ActiveRecord::Migration
  def change
    add_column :learning_pieces, :lpimage, :string
  end
end
