class Subscription < ActiveRecord::Base
  require 'twilio-ruby'

  belongs_to :person

  after_create :reminder

 # Notify our appointment attendee X minutes before the appointment time
  def reminder
    @twilio_number = '+12065391879'
		@client = Twilio::REST::Client.new 'AC4e9ac55e2bbd7fc3a434e3d37896782e','5934a63e2b41eddfaa0275f20b328db9'
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi Just a reminder that your #{self.title} subscription should be canceled on #{time_str}."
    @client.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => reminder,
    )
  end

  def when_to_run
    minutes_before_appointment = 1.minutes
    time - minutes_before_appointment
  end


  	handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }
end