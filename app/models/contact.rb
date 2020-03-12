class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :first_name, uniqueness: true
  validates :middle_name, presence: true
  validates :middle_name, uniqueness: true
  validates :last_name, presence: true
  validates :last_name, uniqueness: true
  validates :phone_number, presence: true
  validates :phone_number, numericality:  { greater_than: 0}
  

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    first_name + " " + last_name
  end

  def japan_phone_number
  "+81 #{phone_number}"
  end

  def brazillian_number
    "+55 #{phone_number}"
  end

#   def convert
#     @address = Geocoder.search([latitude,longitude])
# end

end



