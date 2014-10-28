class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.references :user, index: true
      t.string :title
      t.string :description
      t.string :picture_url
      t.string :link_url
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
