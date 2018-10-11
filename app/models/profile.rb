class Profile < ApplicationRecord
  belongs_to :user
  has_many :accounts, :images, :testimonials
  has_one :multiplier
end