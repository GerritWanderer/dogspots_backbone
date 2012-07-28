collection @spots, :root => false, :object_root => false
attributes :id, :title, :text, :street, :zip, :city, :average_rating, :spot_image, :created_at
child :user do
  attributes :id, :name
end