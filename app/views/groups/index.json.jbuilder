json.array!(@groups) do |group|
  json.extract! group, :id, :name, :description, :organization_date
  json.url group_url(group, format: :json)
end
