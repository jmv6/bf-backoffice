json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :surname, :email, :telephone_number, :address1, :address2, :town, :post_code, :county, :country, :product, :status, :notes, :agent_number
  json.url client_url(client, format: :json)
end
