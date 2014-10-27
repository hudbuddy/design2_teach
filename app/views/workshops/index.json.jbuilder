json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :profile_id, :title, :description, :picture_url, :link_url, :deleted_at
  json.url workshop_url(workshop, format: :json)
end
