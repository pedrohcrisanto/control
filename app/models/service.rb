class Service < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, :price , presence: true
end
