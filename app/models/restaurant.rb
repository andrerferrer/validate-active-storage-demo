class Restaurant < ApplicationRecord
  has_many :reviews
  has_one_attached :photo
  validate :photo_is_attached

  def photo_is_attached
    errors.add(:photo, 'must be attached') unless photo.attached?
  end
end
