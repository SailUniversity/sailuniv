class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.integer :noflabs

      t.timestamps
    end
  end
end
