class User < ApplicationRecord

  validates :first_name, presence: true, length: { minimum: 1, maximum: 15 }
  validates :last_name, presence: true, length: { minimum: 1, maximum: 50 }
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :title, presence: true, length: { minimum: 1, maximum: 30 }
  validates :description, presence: true, length: { minimum: 10, maximum: 5000 }
  validates :address, length: { minimum: 3, maximum: 150 }


  before_save { self.email = email.downcase }

  has_secure_password

  has_one_attached :profile_picture


end
