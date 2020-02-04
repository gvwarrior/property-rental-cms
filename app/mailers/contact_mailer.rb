class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #
  def deliver_message(message)
      @message = message
      mail(subject: message.subject, body: message.body + "\n"+ "Phone:" + message.phone, To: CONTACT_RECIPIENT, from: message.email, sent_on: Time.now)

  end
end
