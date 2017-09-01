class ContactMessagesController < ApplicationController
  def create
    @request = ContactMessage.new(contact_message_params)
    respond_to do |format|
      if @request.save
        if Time.now-Time.parse(params[:start_t]) > 15.seconds
          RequestMailer.general_inquiry(@request).deliver_now
          RequestMailer.general_inquiry_confirmation(@request).deliver_now
        end
        flash[:success]='Thanks for your message! We will get back to you as soon as possible.'
        format.html { redirect_to root_path }
      else
        format.html { render root_path }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :phone, :message)
  end
end
