class Service < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, :price , presence: true
end
