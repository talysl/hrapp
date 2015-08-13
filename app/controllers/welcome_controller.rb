class WelcomeController < ApplicationController
  def index
     @employee = Employee.where(email: current_user.email).first
    if @employee
      render 'index'
    else
      render 'message'
    end
  end
end
