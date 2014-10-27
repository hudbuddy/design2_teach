class RemoveTypeFromUserTypes < ActiveRecord::Migration
  def change
    remove_column :user_types, :type, :integer
  end
end