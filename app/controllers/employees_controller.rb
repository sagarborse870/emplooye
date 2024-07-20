class EmployeesController < ApplicationController
  def index
    @employee = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employee_path
    else
      puts @employee.errors
      redirect_to :edit
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit!
  end
end
