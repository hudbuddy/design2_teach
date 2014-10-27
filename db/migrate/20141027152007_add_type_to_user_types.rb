class AddTypeToUserTypes < ActiveRecord::Migration
  def change
    add_column :user_types, :type, :string
  end
end
