class User < ActiveRecord::Base
  has_secure_password
  # has_one :health_status

  EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: EMAIL_REGEX
end
