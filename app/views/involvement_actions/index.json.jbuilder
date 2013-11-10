json.array!(@involvement_actions) do |involvement_action|
  json.extract! involvement_action, :title, :description, :link, :priority
  json.url involvement_action_url(involvement_action, format: :json)
end
