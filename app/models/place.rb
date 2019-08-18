class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  geocoded_by :address
  after_validation :geocode

   validates :name, :description, :address, presence: true, length: { minimum: 4, too_short: "is too short =3=." }
 end