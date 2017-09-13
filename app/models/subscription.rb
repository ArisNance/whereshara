# Subscriptions Model == Pets. This is because I cloned this workspace from another one of my projects. I think i'll rename the models for less confusion later, but since the project is small we'll keep it this way.

class Subscription < ActiveRecord::Base
  require 'twilio-ruby'
  
  # Callback for lost pet
  extend ActiveModel::Callbacks
  
  #define_model_callbacks :lost, :found, :only => [:after]

  #after_lost  :notify_owner
  #after_found :mark_found
  
  #end
  belongs_to :user

  #after_found :reminder
  
  
  #after_create :lost
  
  #scope for lost method in controller
  #scope :is_lost, ->{ where(lost: true) }

 # End

 # Notify our appointment attendee X minutes before the appointment time
  
  
  def reminder
  end


  #def when_to_run
  #   minutes_before_appointment = 1.minutes
  #   time - minutes_before_appointment
  # end


  	handle_asynchronously :reminder,  :priority => 0
  	
  	
  # Mark the pet as lost
  # def lost
  #   run_callbacks :lost :found do
  #     puts "Marking Pet lost..."
  #   end
  # end
  
  private


  def self.found
    @twilio_number = '+12065391879'
		@client = Twilio::REST::Client.new 'AC4e9ac55e2bbd7fc3a434e3d37896782e','5934a63e2b41eddfaa0275f20b328db9'
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi Great news! #{self.title} was located. Please check your email and social media for any messages."
    @client.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => reminder,
    )
  end
  

  # end mark pet as lasted
end