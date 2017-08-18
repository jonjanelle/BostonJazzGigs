class BandRequestsController < ApplicationController
  def new
    @band_request = BandRequest.new
  end

  def create
    @request = BandRequest.new(band_request_params)
    respond_to do |format|
      if @request.save
        flash[:success]='Request sent! We will contact you soon to discuss band options meeting your requirements'
        if Time.now-Time.parse(params[:start_t]) > 15.seconds
          RequestMailer.band_request(@request).deliver_now
          RequestMailer.band_request_confirmation(@request).deliver_now
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
  def band_request_params
    params.require(:band_request).permit(:first, :last, :email, :phone, :preferred_contact,
                                        :date, :time, :address, :city, :state, :hours, :bandsize,
                                        :instrument_wanted, :description, :status)
  end
end
