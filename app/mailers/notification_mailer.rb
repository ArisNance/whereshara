class NotificationMailer < ApplicationMailer
    default from: "golikealocal@gmail.com"
  # Need to insert instance variables in mail template.
  def notification_email(subscriptions)
    @subscriptions = @subscriptions
    mail(to: @subscriptions, subject: 'Your Pet has been located!')
  end
end
