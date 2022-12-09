class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  paginates_per 50

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
