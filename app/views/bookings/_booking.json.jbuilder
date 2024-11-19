json.extract! booking, :id, :group_id, :venue_id, :concert_id, :date_booked, :booked_fee, :created_at, :updated_at
json.url booking_url(booking, format: :json)
