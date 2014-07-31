json.array!(@trees) do |tree|
  json.extract! tree, :date, :species, :circum, :light, :lat, :long, :droad, :dwater, :direction, :notes, :parea, :ptree, :pleaf
  json.url tree_url(tree, format: :json)
end
