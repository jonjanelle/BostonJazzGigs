class MusicianRequest < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :first, presence: true, length: {maximum: 50}
  validates :last, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 100},
            format: { with: VALID_EMAIL_REGEX }
  validates_presence_of :city, :state, :primary_instrument, :experience, :availability

  def full_name
    "#{first} #{last}".titleize
  end

  def full_address
    if address.present?
      return "#{address}, #{city}, #{state}"
    else
      return "#{city}, #{state}"
    end
  end
end
