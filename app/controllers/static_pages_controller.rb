class StaticPagesController < ApplicationController
  def home
    @request = ContactMessage.new
    @home_profile = HomeProfile.where(profile_name: "default").first
  end
end
