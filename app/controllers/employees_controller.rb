class EmployeesController < ApplicationController
    protect_from_forgery except: :save
    def show
        emp = Employee.all
        render json: {employees: ActiveModelSerializers::SerializableResource.new(emp, each_serializer: ShowingSerializer)}
    end
    def save
        emp = Employee.new(emp_params)
        if emp.save
            render json: {message: "Record saved"}
        else 
            render json: {errors: "Name already taken"}
        end
    end

    private
    def emp_params
        params.permit(:Name, :Last_Name, :Gender, :DOB, :DOJ, :department_id)
    end
end
