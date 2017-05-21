class ContactMailer < ApplicationMailer
  default from: 'admin@ksimconsulting.com',
          to: 'admin@ksimconsulting.com',
          subject: "SPDash Contact Message"

  def send_message contact
    @contact = contact
    headers['X-SMTPAPI'] = '{"category": "Contact Message"}'
    mail
  end
end
