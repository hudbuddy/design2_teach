json.array!(@learning_pieces) do |learning_piece|
  json.extract! learning_piece, :id, :title, :description_short, :description_long, :youtube_url, :deleted_at
  json.url learning_piece_url(learning_piece, format: :json)
end
