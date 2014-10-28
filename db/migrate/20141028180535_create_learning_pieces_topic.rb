class CreateLearningPiecesTopic < ActiveRecord::Migration
  def change
    create_table :learning_pieces_topics do |t|
      t.references :learning_piece
      t.references :topic
    end
  end
end
