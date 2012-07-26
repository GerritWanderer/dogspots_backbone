object @spot => ""
attributes :id, :title, :text, :street, :zip, :city, :average_rating, :created_at
child :user do
  attributes :id, :name
end
child :comments do
  attributes :id, :text
  child :user do
    attributes :id, :name
  end
end