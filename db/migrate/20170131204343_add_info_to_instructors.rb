class AddInfoToInstructors < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :forstname, :string
    add_column :instructors, :lastname, :string
    add_column :instructors, :age, :integer
    add_column :instructors, :location, :string
    add_column :instructors, :experience, :string
    add_column :instructors, :bio, :text
    add_column :instructors, :addyone, :string
    add_column :instructors, :addytwo, :string
    add_column :instructors, :city, :string
    add_column :instructors, :state, :string
    add_column :instructors, :zip, :string
    add_column :instructors, :phone, :string
    add_column :instructors, :profpicture, :string
  end
end
