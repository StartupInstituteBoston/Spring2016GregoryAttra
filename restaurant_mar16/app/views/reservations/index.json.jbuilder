json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :email, :datetime, :message, :restaurant_name
  json.url reservation_url(reservation, format: :json)
end
