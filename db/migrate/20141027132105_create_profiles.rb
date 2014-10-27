class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :profile_picture
      t.string :background_picture
      t.text :bio
      t.string :personal_site_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :facebook_url
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
