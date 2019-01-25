class User < ApplicationRecord
	# belongs_to :role
	# before_create :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	private
	def set_default_role
		self.role ||= Role.find_by_name('registered')

	end

  # after_create :welcome_email_send
  # def welcome_email_send
  #   WelcomeMailer.welcome_email_send.(self).deliver
  #   redirect_to dashboard_landing_path
  # end
  # after_create SubscribeUserToMailingListJob.perform_later

end
