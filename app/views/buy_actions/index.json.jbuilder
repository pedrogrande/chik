json.array!(@buy_actions) do |buy_action|
  json.extract! buy_action, :title, :description, :link, :priority
  json.url buy_action_url(buy_action, format: :json)
end
