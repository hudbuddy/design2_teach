class ChangeUserTypes < ActiveRecord::Migration
  def change
    remove_column :user_types, :type
    add_column :user_types, :title, :string
  end
end
