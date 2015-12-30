class ContactMailer < ApplicationMailer
  default from: 'info@spdash.com',
          to: 'simkessy@gmail.com',
          subject: "SpDash Contact Message"

  def send_message contact
    @contact = contact
    headers['X-SMTPAPI'] = '{"category": "Contact Message"}'
    mail
  end
end