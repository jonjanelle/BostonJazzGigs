class StaticPagesController < ApplicationController
  def home
    @request = ContactMessage.new
  end
end
