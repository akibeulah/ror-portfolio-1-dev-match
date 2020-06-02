class ContactMailer < ApplicationMailer
  default to: 'ultratechnologies.dev@gmail.com'

  def contact_email(name, email, comment)
    @name = name
    @email = email
    @comment = comment

    mail(from: email, subject: 'Contact Form Message')
  end
end

