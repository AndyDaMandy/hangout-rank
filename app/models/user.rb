class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  extend FriendlyId
  friendly_id :username, use: :slugged

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: %i[user admin]
  has_many :hangouts, dependent: :destroy

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

  def to_param
    username
  end

end
