json.array!(@background_images) do |background_image|
  json.extract! background_image, :image
  json.url background_image_url(background_image, format: :json)
end
