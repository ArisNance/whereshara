class NotificationMailer < ApplicationMailer
    default from: "golikealocal@gmail.com"

  def notification_email(person)
    @person = person
    mail(to: @person, subject: 'You have a subscription ending')
  end
end
