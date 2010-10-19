class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @employee = current_user.employee
    
  end
end
