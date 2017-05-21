class HomeController < ApplicationController
  def index
    @contact = Contact.new
  end

  # Handle partner request form
  def contact_message
    # Create request
    @contact = Contact.new contact_params

    if @contact.save
      #Email confirmation to user and staff
      ContactMailer.send_message(@contact).deliver_now
      respond_to do |format|
        format.html {
          flash[:success] = "Thank you for your request. We will be in contact as soon as possible."
          redirect_to root_path
        }
      end
    else
      flash[:danger] = "We're experiencing an error, please try again or email us at admin@ksimconsulting.com"
      redirect_to root_path
    end
  end

  private
    def contact_params
      params.permit(:name, :organization, :email, :phone, :message)
    end
end
