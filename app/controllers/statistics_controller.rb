class StatisticsController < ApplicationController
  # List all the employees that are arriving late
  def index
    @employees = Employee.all
    @checkpoints = Checkpoint.all
  end

end
