class Subscription < ActiveRecord::Base
  require 'twilio-ruby'
  
belongs_to :person

after_create :reminder

 # Notify our appointment attendee X minutes before the appointment time
  def reminder
    @twilio_number = ENV['TWILIO_NUMBER']
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    @client = Twilio::REST::Client.new account_sid, ENV['TWILIO_AUTH_TOKEN']
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.title}. Just a reminder that you have an appointment coming up at #{time_str}."
    message = @client.api.account(account_sid).messages.create(
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
