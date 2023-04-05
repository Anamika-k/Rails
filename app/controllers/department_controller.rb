class DepartmentController < ApplicationController
    protect_from_forgery except: :save
    def index
        dept = Department.all
        render json: {department: ActiveModelSerializers::SerializableResource.new(dept, each_serializer: IndexSerializer)}
    end
    def save_dept
        dept = Department.new(dept_params)
        if dept.save
            render json: {message: "Department saved!"}
        else
            render json: {message: "not saved"}
        end
    end

    def show_emp
        emp = Employee.all
        render json: {employee: emp}
    end

    private
    def dept_params
        params.permit(:name)
    end
end
