class RequestMailer < ApplicationMailer

  def general_inquiry(request)
    @request = request
    mail(to: "bostonjazzgigs@gmail.com", reply_to: request.email, subject: "Boston Jazz Gigs Inquiry")
  end

  def band_request(request)
    @request = request
    mail(to: "bostonjazzgigs@gmail.com", subject: 'Boston Jazz Gigs Band Request', reply_to: request.email)
  end

  def band_request_confirmation(request)
    @request = request
    mail(to: "#{request.full_name} <#{request.email}>", subject: 'Boston Jazz Gigs Band Request Confirmation', reply_to: "bostonjazzgigs@gmail.com", from: "BostonJazzGigs <bostonjazzgigs@gmail.com>")
  end
end
