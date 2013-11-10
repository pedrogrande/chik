json.array!(@content_items) do |content_item|
  json.extract! content_item, :about, :quote, :quote_author, :twitter_widget_id, :trailer_iframe, :trailer_caption, :download_link, :download_image
  json.url content_item_url(content_item, format: :json)
end
