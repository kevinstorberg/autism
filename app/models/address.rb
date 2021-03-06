class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates :addressable_id, :addressable_type, :city, :country, :kind, :state, :street_one, :zip_code, presence: true
end
