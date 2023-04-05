class ShowingSerializer < ActiveModel::Serializer
  attributes :id, :Name, :Last_Name, :age, :name, :position
  def age
    #if object.DOB.present?
    #  Time.zone.now.year - object.DOB.year 
    #else
   #   ""
   #end
   object.DOB.present? ? (Time.zone.now.year - object.DOB.year) : ""
  end
  def name
    object.department.name
  end
  def position
    object.DOJ.present? && (Time.zone.now.year - object.DOJ.year)>1 ? "Senior" : "junior"
  end
    
end
