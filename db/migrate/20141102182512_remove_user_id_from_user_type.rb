class RemoveUserIdFromUserType < ActiveRecord::Migration
  def change
    remove_column :user_types, :user_id
  end
end