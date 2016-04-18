class Department < ActiveRecord::Base
  has_many :employees

  validates :name, :arrival_time, :departure_time, :arrival_tolerance, :departure_tolerance, presence: true
  validates :working_hours, :lunch_start, :lunch_finish, presence: true
end
