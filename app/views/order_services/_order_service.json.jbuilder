json.extract! order_service, :id, :service_id, :amount, :employee, :datestart, :dateend, :detail, :user_id, :created_at, :updated_at
json.url order_service_url(order_service, format: :json)
