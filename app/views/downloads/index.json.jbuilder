json.array!(@downloads) do |download|
  json.extract! download, :name, :file
  json.url download_url(download, format: :json)
end
