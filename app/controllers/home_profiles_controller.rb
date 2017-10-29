class HomeProfilesController < ApplicationController

  def index
    if user_signed_in? && current_user.role_type == "admin"
      redirect_to  admin_edit_content_path and return
    else
      redirect_to home_path and return
    end
  end

  def edit
    unless user_signed_in?
      redirect_to root_path and return
    end
    @home_profile = HomeProfile.where(profile_name: "default").first
  end

  def update
    @home_profile = HomeProfile.find(params[:id])
    @home_profile.attributes = home_profile_params
    if @home_profile.save
      flash[:success] = "Your changes were saved successfully!"
      redirect_to admin_edit_content_path
    else
      flash[:alert] = "An error prevented your changes from being saved."
      render :edit
    end
  end

  private

  def home_profile_params
    params[:home_profile].permit(:subtitle, :mission_title, :mission_subtitle, :mission_description, :for_planners_title1,
                                :for_planners_description1, :for_planners_title2, :for_planners_description2, :for_musicians_title1,
                                :for_musicians_description1, :booking_title, :booking_description, :find_band_title, :musician_looking_title,
                                :demos_title, :demos_subtitle, :demos_description, :contact_title, :contact_description)
  end
end
