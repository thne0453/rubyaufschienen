json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :start, :end, :room_type, :guest_name1, :guest_name2
  json.url reservation_url(reservation, format: :json)
end
