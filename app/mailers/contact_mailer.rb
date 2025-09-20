class ContactMailer < ApplicationMailer
  default to: 'te28@hotmail.com'

  def contact_email(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message

    mail(
      from: email, 
      subject: 'New Contact Form Submission',
      reply_to: email
    )
  end
end
