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
    @audio_names = []
    (1..10).each  { |i| @audio_names << ["audio_title_#{i}".to_sym, "audio_#{i}".to_sym, "audio_#{i}_cache".to_sym] }
    @home_profile = HomeProfile.where(profile_name: "default").first
    @n_songs = 0;
    @audio_names.each { |name| @n_songs = @n_songs + (@home_profile.send(name[1].to_s).present? ? 1 : 0) }
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

  def remove_song
    hp = HomeProfile.find(params[:id])
    song_num = params[:song_num]
    hp.try(:send, "remove_audio_#{song_num}!")
    hp.update_attribute("audio_title_#{song_num}".to_sym, nil)
    hp.save
    song_index = song_num.to_i - 1
    respond_to do |format|
      format.js { render :js => "$('.audio-wrapper-#{song_index}').hide('blind'); console.log('.audio-wrapper-#{song_index}');" }
    end
  end

  private

  def home_profile_params
    params[:home_profile].permit(:subtitle, :mission_title, :mission_subtitle, :mission_description, :for_planners_title1,
                                :for_planners_description1, :for_planners_title2, :for_planners_description2, :for_musicians_title1,
                                :for_musicians_description1, :booking_title, :booking_description, :find_band_title, :musician_looking_title,
                                :demos_title, :demos_subtitle, :demos_description, :contact_title, :contact_description, :audio_1, :audio_2,
                                :audio_3, :audio_4, :audio_5, :audio_6, :audio_7, :audio_8, :audio_9, :audio_10, :audio_title_1, :audio_title_2,
                                :audio_title_3, :audio_title_4, :audio_title_5, :audio_title_6, :audio_title_7, :audio_title_8, :audio_title_9,
                                :audio_title_10)
  end
end
