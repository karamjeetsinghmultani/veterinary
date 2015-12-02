json.array!(@customer_pets) do |customer_pet|
  json.extract! customer_pet, :id, :name, :type, :breed, :age, :weight, :data
  json.url customer_pet_url(customer_pet, format: :json)
end
