json.array!(@toplics) do |toplic|
  json.extract! toplic, :id, :title, :description, :linkwith
  json.url toplic_url(toplic, format: :json)
end
