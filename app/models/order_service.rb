class OrderService < ApplicationRecord
  belongs_to :service
  belongs_to :user
end
