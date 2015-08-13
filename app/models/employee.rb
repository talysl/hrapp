class Employee < ActiveRecord::Base
  # This line below indicate that a employee can create many leave requests,when deleted it destroys also the requests of this employee
  has_many :requests, dependent: :destroy

  # This command validades the Name of an employee (Required Field)
  validates :full_name, presence: true, length: { minimum: 5 }
  
  # This line below contains the regected caracters to validate the email field (in this case considered a full regex)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  # This is a validation for the phone number (Required Field)
  validates :phone, presence: true, length: { minimum: 8 }

  # As a required field, this line below validate the email field
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX}
 
  # A validation for the role of an employee
  validates :role, presence: true, length: { minimum: 3 }

  # Validation for the area of an employee
  validates :area, presence: true, length: { minimum: 3 }
end
