json.extract! customer, :id, :active, :name, :status, :date_of_birth, :sgender, :cpf, :address, :neighborhood, :city, :state, :zipcode, :complement, :phone, :comercial_phone, :cellphone, :workplace, :created_at, :updated_at
json.url customer_url(customer, format: :json)
