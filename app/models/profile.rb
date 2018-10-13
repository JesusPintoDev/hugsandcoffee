class Profile < ApplicationRecord
  belongs_to :user
  has_many :accounts
  has_many :images
  has_many :testimonials
  has_one :multiplier
end