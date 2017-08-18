class MusicianRequestsController < ApplicationController
  def new
    @musician_request = MusicianRequest.new
  end

  def create
    @request = MusicianRequest.new(musician_request_params)
    respond_to do |format|
      if @request.save
        flash[:success]='Request sent! We will contact you soon if your skill set is a good fit for our clients.'
        if Time.now-Time.parse(params[:start_t]) > 15.seconds
          RequestMailer.musician_request(@request).deliver_now
          RequestMailer.musician_request_confirmation(@request).deliver_now
        end
        format.html { redirect_to root_path }
      else
        flash[:alert]="Oops! It looks like something went wrong"
        format.html { redirect_to root_path }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def musician_request_params
    params.require(:musician_request).permit(:first, :last, :email, :phone, :address,
                                             :city, :state, :primary_instrument, :preferred_contact,
                                             :secondary_instrument, :experience, :availability,
                                             :travel_radius, :additional_info, :status)
  end
end
