json.extract! order_service, :id, :service_id, :amount, :employee, :date, :starttime, :endtime, :detail, :user_id, :totalvalue, :liquidvalue, :discount, :created_at, :updated_at
json.url order_service_url(order_service, format: :json)
