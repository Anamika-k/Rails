class ShowingSerializer < ActiveModel::Serializer
  attributes :id, :Name, :age
  def age
    #if object.DOB.present?
    #  Time.zone.now.year - object.DOB.year 
    #else
   #   ""
   #end
   object.DOB.present? ? (Time.zone.now.year - object.DOB.year) : ""
  end
end
