class AddLearningPieceToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :learning_piece, index: true
  end
end
