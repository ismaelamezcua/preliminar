class Employee < ActiveRecord::Base
  has_one :department
  has_many :checkpoints

  validates :name, :barcode, :department_id, presence: true
end
