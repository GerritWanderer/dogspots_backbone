collection @spots
attributes :id, :title, :street, :zip, :city, :created_at
child :ratings do
  attributes :id, :ground, :water, :clean, :play
end