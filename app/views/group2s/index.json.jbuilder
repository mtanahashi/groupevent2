json.array!(@group2s) do |group2|
  json.extract! group2, :id, :name, :description, :organization_date, :group_id_id
  json.url group2_url(group2, format: :json)
end
