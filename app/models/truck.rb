class Truck < ApplicationRecord
  searchkick
  before_save :sanitize
  paginates_per 8
  validates :name,
            :category,
            :city,
            :zip_code,
            :street_address,
            :country,
            :description,
            :phone,
            :email, presence: true

  enum state: %i[available pending booked] #disponible, attente de confirmation, réservé

  # sanitize phone number and emails if blanks
  def sanitize
    self.phone      = phone.delete(" ") unless phone.nil?
    self.email      = email.delete(" ") unless email.nil?
  end

end
