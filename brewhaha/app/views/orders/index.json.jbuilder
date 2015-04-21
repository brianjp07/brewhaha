json.array!(@orders) do |order|
  json.extract! order, :id, :quantity, :time_fulfilled, :location, :expiration, :consumer_id, :producer_id
  json.url order_url(order, format: :json)
end
