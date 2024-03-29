class Profile < ApplicationRecord
  belongs_to :user
  has_many :accounts
  has_many :images
  has_many :testimonials
  has_one :multiplier
  accepts_nested_attributes_for :accounts, :images, :testimonials, :multiplier
  has_one_attached :avatar
end