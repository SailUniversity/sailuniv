class User < ApplicationRecord
	# belongs_to :role
	# before_create :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	after_create SubscribeUserToMailingListJob.perform_later
	private
	def set_default_role
		self.role ||= Role.find_by_name('registered')

	end
end
