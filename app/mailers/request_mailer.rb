class RequestMailer < ApplicationMailer

  def general_inquiry(request)
    @request = request
    mail(to: "bostonjazzgigs@gmail.com", reply_to: request.email, subject: "Boston Jazz Gigs Inquiry")
  end

  def general_inquiry_confirmation(request)
    @request = request
    mail(to: "bostonjazzgigs@gmail.com", reply_to: request.email, subject: "Thanks from Boston Jazz Gigs!")
  end

  def band_request(request)
    @request = request
    mail(to: "bostonjazzgigs@gmail.com", subject: 'Boston Jazz Gigs Band Request', reply_to: request.email)
  end

  def band_request_confirmation(request)
    @request = request
    mail(to: "#{request.full_name} <#{request.email}>", subject: 'Boston Jazz Gigs Band Request Confirmation', reply_to: "bostonjazzgigs@gmail.com", from: "BostonJazzGigs <bostonjazzgigs@gmail.com>")
  end

  def musician_request(request)
    @request = request
    mail(to: "bostonjazzgigs@gmail.com", subject: 'Boston Jazz Gigs Musician Inquiry', reply_to: request.email)
  end

  def musician_request_confirmation(request)
    @request = request
    mail(to: "#{request.full_name} <#{request.email}>", subject: 'Boston Jazz Gigs Musician Inquiry Confirmation', reply_to: "bostonjazzgigs@gmail.com", from: "BostonJazzGigs <bostonjazzgigs@gmail.com>")
  end
end
