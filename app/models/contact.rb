class Contact < ApplicationRecord
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
  end
end
