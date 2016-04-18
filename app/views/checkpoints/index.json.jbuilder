json.array!(@checkpoints) do |checkpoint|
  json.extract! checkpoint, :id, :arrival, :departure, :date, :barcode
  json.url checkpoint_url(checkpoint, format: :json)
end
