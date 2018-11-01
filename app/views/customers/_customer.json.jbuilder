json.extract! customer, :id, :costCode, :first_name, :last_name, :date_of_birth, :email, :user_id, :references, :created_at, :updated_at
json.url customer_url(customer, format: :json)
