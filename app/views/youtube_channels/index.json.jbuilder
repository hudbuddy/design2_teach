json.array!(@youtube_channels) do |youtube_channel|
  json.extract! youtube_channel, :id, :title, :url, :profile_id, :deleted_at
  json.url youtube_channel_url(youtube_channel, format: :json)
end
