class Checkpoint < ActiveRecord::Base
  belongs_to :employee

  validates :arrival, :departure, :barcode, presence: true
end
