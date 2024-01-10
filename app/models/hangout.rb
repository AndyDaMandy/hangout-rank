class Hangout < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      %i[title date]
    ]
  end

  belongs_to :user
end
