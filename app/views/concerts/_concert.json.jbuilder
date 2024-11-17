json.extract! concert, :id, :group_id, :title, :venue_id, :start_time, :end_time, :fee, :paid, :created_at, :updated_at
json.url concert_url(concert, format: :json)
