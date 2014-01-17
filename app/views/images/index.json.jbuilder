json.array!(@images) do |image|
  json.extract! image, :image, :caption
  json.url image_url(image, format: :json)
end
