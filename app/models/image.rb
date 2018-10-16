class Image < ApplicationRecord
  belongs_to :profile
  has_one_attached :url
end
