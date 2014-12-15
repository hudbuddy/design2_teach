class AddIsarticleToLearningPieces < ActiveRecord::Migration
  def change
    add_column :learning_pieces, :isarticle, :boolean, :default => false
  end
end
