class Advertisement < ApplicationRecord
  belongs_to :user

  validates :name, :duration, :package, presence: true
end
