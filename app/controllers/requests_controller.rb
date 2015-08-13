class RequestsController < ApplicationController
# This controller manipulates the annual leave requests created by the employees
  # Method to show all requests
  def listing
    @requests = Request.all
  end

  # Finding the employee and then finding the requests related to this employee
  def index
    @employee = Employee.find(params[:employee_id])
    @request = @employee.requests.all
  end

  # Showing a request
  def show
    @request = Request.find_by(id: params[:id])
  end

  # Method for a new request
  def new
    @employee = Employee.find(params[:employee_id])
    @request = @employee.requests.new
  end

  # Creating a request in a employee profile
  def create
    @employee = Employee.find(params[:employee_id])
    @request = @employee.requests.create(request_params)

    if @request.save
      redirect_to employee_requests_path(@employee)
    else
      render 'new'
    end
  end

  # Method to delete a request 
  def destroy
    @request = Request.find_by(id: params[:id])
    @request.destroy
    redirect_to employee_requests_path, :method=>:get
  end
 
  private
  def request_params
    params.require(:request).permit(:start_date, :end_date, :considerations)
  end
end
