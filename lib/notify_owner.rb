 class SubscriptionsController::NotifyOwner
 # Notify our appointment attendee X minutes before the appointment time
  require 'twilio-ruby'
  
  private
  
  def self.mark_found
    @twilio_number = '+12065391879'
	@client = Twilio::REST::Client.new 'AC4e9ac55e2bbd7fc3a434e3d37896782e','5934a63e2b41eddfaa0275f20b328db9'
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Great News! #{self.title} is has just been located. Be on the lookout for an email."
    @client.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => reminder,
    )
  end
 end