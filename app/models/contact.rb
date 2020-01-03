class Contact < ApplicationRecord
  validates :title, presence: true
  validates :email, presence: true
  validates :name, presence: true
end
