class AddVisibleToLearningPiecesUsersAndProducts < ActiveRecord::Migration
  AFFECTED_TABLES = [:learning_pieces, :users, :products]
  def change
    AFFECTED_TABLES.each do |t|
      add_column t, :visible, :boolean, :default => false
    end
  end
end
