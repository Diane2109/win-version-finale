class Partner < ApplicationRecord

  validates :company_name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :status, presence: true, length: { minimum: 1, maximum: 50 }
  validates :grand_groupe, inclusion: { in: [true, false] }


  has_one_attached :company_logo


end
