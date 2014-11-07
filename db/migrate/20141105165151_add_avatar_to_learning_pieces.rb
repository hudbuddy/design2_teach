class AddAvatarToLearningPieces < ActiveRecord::Migration
  def change
    add_column :learning_pieces, :avatar, :string
  end
end
