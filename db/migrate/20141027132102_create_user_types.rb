class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.references :user, index: true
      t.string :type
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
