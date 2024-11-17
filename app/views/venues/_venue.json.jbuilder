json.extract! venue, :id, :name, :contact, :email, :address, :phone, :image, :created_at, :updated_at
json.url venue_url(venue, format: :json)
json.image url_for(venue.image)
