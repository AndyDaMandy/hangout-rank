class Hangout < ApplicationRecord

  extend FriendlyId
  friendly_id :generated_slug, use: :slugged
  def generated_slug
    require 'securerandom'
    @generated_slug ||= persisted? ? friendly_id : SecureRandom.hex(10)
  end

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true



  belongs_to :user
end
