class ContactMailer < ActionMailer::Base
  default to: 'akibeulah@gmail.com'

  def contact_email(name, email, comment)
    @name = name
    @email = email
    @comment = comment

    mail(from: email, subject: 'Contact Form Message')
  end
end

