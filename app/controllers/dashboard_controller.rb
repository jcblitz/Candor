class DashboardController < ApplicationController
  def index
    @employee = Employee.find(1)
    
  end
end
