# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/general_inquiry
  def general_inquiry
    RequestMailer.general_inquiry
  end

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/band_request
  def band_request
    RequestMailer.band_request
  end

end
