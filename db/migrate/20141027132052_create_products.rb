class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :url
      t.string :description
      t.string :picture_url
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
