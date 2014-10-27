json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :first_name, :last_name, :profile_picture, :background_picture, :bio, :personal_site_url, :twitter_url, :linkedin_url, :facebook_url, :deleted_at
  json.url profile_url(profile, format: :json)
end
