require 'test_helper'

class RequestMailerTest < ActionMailer::TestCase
  test "general_inquiry" do
    mail = RequestMailer.general_inquiry
    assert_equal "General inquiry", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "band_request" do
    mail = RequestMailer.band_request
    assert_equal "Band request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
