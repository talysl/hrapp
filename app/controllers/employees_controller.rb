class EmployeesController < ApplicationController

  # This is the definition to list all employees
  def index
    @employees = Employee.all
  end

  # This is a definition to show the profile of an employee according to the id in the table (the id can also be considered the company id)
  def show
    @employee = Employee.find(params[:id])
  end

  # This definition is to show a form for a new employee
  def new
    @employee = Employee.new
  end

  # The edit definition is to open an edition form according to the id of the employee in the table
  def edit
    @employee = Employee.find(params[:id])
  end

  # This is one of the most important definitions, it creates a new record in the table with the employee details 
  def create
    @employee = Employee.new(employee_params)
 
    # This statement shows the page for a new employee if it was not saved in the table, if it was saved, it shows the profile created
    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  # This definition is to update an employee profile, it works similar to the definition above
  def update
    @employee = Employee.find(params[:id])
 
    if @employee.update(employee_params)
      redirect_to @employee
    else
      render 'edit'
    end
  end
 
  # This definition is to delete a record in a table
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
 
    redirect_to employees_path
  end

  # This definition contains some parameters for the validations
  private
  def employee_params
    params.require(:employee).permit(:full_name, :address, :phone, :email, :role, :area, :admission_date, :contract_duration, :contract_term)
  end
end
