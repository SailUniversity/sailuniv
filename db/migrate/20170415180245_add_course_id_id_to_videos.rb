class AddCourseIdIdToVideos < ActiveRecord::Migration[5.0]
  def change
  	# add_reference :videos, :course_id, foreign_key: true
  end
end
