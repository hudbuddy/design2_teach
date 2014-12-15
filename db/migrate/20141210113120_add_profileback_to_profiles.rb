class AddProfilebackToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profileback, :string
  end
end
