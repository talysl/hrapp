class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin@tdev.ie", password: "55Br11sP"

  def index
    @employees = Employee.count
    @requests = Request.count
    @events = Event.count
    @projects = Project.count
  end
end
