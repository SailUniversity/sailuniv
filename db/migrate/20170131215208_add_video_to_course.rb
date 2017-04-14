class AddVideoToCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :video, foreign_key: true
  end
end
