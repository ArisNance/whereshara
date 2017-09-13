class NotifyController < ApplicationController
    
def owner
  @twilio_number = '+12065391879'
	@client = Twilio::REST::Client.new 'AC4e9ac55e2bbd7fc3a434e3d37896782e','5934a63e2b41eddfaa0275f20b328db9'
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "We will notify you once #{self.title} is located. Don't panic, we're on it!"
    @client.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => reminder,
    )
  end
end
