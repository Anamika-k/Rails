class IndexSerializer < ActiveModel::Serializer
    attributes :id, :name, :emp_name
    def emp_name
       # ActiveModelSerializers::SerializableResource.new(object.employees, each_serializer: ShowingSerializer)
       object.employees.all.map{|x| {full_name: "#{x.Name} #{x.Last_Name}"}}
    end
end