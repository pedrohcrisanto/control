class OrderService < ApplicationRecord
  belongs_to :service
  belongs_to :user
  validates :service, :amount, :employee, :date, :starttime, :endtime, presence: true

  

 

end
