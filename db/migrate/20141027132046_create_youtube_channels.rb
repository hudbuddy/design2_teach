class CreateYoutubeChannels < ActiveRecord::Migration
  def change
    create_table :youtube_channels do |t|
      t.string :title
      t.string :url
      t.references :profile, index: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
