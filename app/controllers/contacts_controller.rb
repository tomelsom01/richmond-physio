class ContactsController < ApplicationController
  def new
  end

  def create
    name    = params[:contact][:name]
    email   = params[:contact][:email]
    phone   = params[:contact][:phone]
    message = params[:contact][:message]

    ContactMailer.contact_email(name, email, phone, message).deliver_now
    redirect_to root_path, notice: "Your message has been sent!"
  end
end
