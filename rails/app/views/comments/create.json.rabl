collection @comments, :root => false, :object_root => false
attributes :id, :text
child :user do
  attributes :id, :name
end