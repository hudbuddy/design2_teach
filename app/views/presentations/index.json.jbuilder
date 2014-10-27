json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :profile_id, :title, :description, :picture_url, :link_url, :deleted_at
  json.url presentation_url(presentation, format: :json)
end
