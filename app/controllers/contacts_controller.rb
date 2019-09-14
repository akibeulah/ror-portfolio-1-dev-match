class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      name = params[:contact][:name]
      email = params[:contact][:email]
      comment = params[:contact][:comment]

      ContactMailer.contact_email(name, email, comment).deliver

      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      flash[:danger] = "Message not sent."
      redirect_to new_contact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :comment)
  end
end