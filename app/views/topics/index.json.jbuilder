json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :learning_piece_id, :deleted_at
  json.url topic_url(topic, format: :json)
end
