class AddForeignKeyInEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :department
  end
end
