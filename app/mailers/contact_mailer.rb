class ContactMailer < ApplicationMailer
  default from: ENV['EMAIL']

  def contact_mail(contact)
    @contact = contact
    mail(to: ENV['REVEICE_CONTACT_MAIL'], subject: '收到新的消息')
  end
end
