class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
