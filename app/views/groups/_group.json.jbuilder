json.extract! group, :id, :title, :contact, :email, :address, :phone, :image, :created_at, :updated_at
json.url group_url(group, format: :json)
json.image url_for(group.image)
