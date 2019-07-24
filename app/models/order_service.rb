class OrderService < ApplicationRecord
  belongs_to :service
  belongs_to :user
  validates :service, :amount, :employee, :date, :starttime, :endtime, presence: true

  before_save :set_total
  def set_total
    self.totalvalue = self.amount * self.service.price
      if self.amount < 10
       self.liquidvalue = self.totalvalue
       self.discount = 0
    end
     if self.amount >= 10
         self.discount = 0.1
          self.liquidvalue = self.totalvalue - (self.totalvalue * self.discount)
      end
      if self.amount >= 20
        self.discount = 0.2
        self.liquidvalue = self.totalvalue - (self.totalvalue * self.discount)
      end
     if self.amount >= 30 
      self.discount = 0.3
      self.liquidvalue = self.totalvalue - (self.totalvalue * self.discount)
    end
  end
def total_values
  order_service.each {|p| total += p.totalvalue }
  return total
end

end
