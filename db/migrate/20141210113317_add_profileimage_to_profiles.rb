class AddProfileimageToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profileimage, :string
  end
end
