class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new
    @employee.name = params[:name]
    @employee.email = params[:email]
    @employee.save
    redirect_to :action => 'index'
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes(params[:employee])
    @employee.save
    redirect_to :action => 'index'
  end

end
