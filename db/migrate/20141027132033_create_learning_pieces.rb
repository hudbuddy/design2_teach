class CreateLearningPieces < ActiveRecord::Migration
  def change
    create_table :learning_pieces do |t|
      t.string :title
      t.string :description_short
      t.text :description_long
      t.string :youtube_url
      t.datetime :deleted_at
      t.references :user, index: true

      t.timestamps
    end
  end
end
