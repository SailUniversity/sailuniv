class Course < ApplicationRecord

	# belongs_to :user  #maybe?

	has_many :sales
	has_many :video

	validates_numericality_of :price,
		greater_than: 49,
		message: "must be at least 50 cents"


end
