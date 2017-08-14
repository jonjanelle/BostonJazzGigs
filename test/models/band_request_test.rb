require 'test_helper'

class BandRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @request = BandRequest.last
  end

  test 'invalid emails should not save' do
    bad_email =["blah@blah..com",
                "emailemail",
                "",
                "blah@blah",
                "@blah"]
    bad_email.each do |bad|
      @request.email=bad
      assert_not @request.save
    end
  end
end
