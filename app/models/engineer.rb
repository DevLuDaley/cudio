# frozen_string_literal: true

class Engineer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :validatable
         # devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:github]
  # devise :omniauthable

  # copied from https://github.com/rubocop-hq/rails-style-guide
  # validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
  # validates :content, length: { maximum: 500 }

  has_many :zats # adds methods to my model
  # adds methods to my model
  has_many :artists, through: :zats
  has_many :studios, through: :zats
  # has_many :artists through :sessions
  # has_many :studios through :sessions

  # validates :name, presence => true
  # use_this=> validates :name, presence: true, length: { minimum: 2 }
  # use_this=>validates :name, uniqueness: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |engineer|
      engineer.provider = auth.provider
      engineer.name = auth.name
      engineer.uid = auth.uid
      engineer.email = auth.info.email
      engineer.password = Devise.friendly_token[0, 20]
    end
end
end
