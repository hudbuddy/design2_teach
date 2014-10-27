class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :profile, index: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
