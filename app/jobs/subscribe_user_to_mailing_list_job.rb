class SubscribeUserToMailingListJob < ApplicationJob
  queue_as :default

  def perform(user)
    gibbon = Gibbon::Request.new
    gibbon.lists(ENV['sailuniv_mailchimp_listid']).members.create(body: {email_address: user.email, status: "subscribed", merge_fields: {FNAME: user.firstname, LNAME: user.lastname}})
  end
end
