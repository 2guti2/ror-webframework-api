class Home < ApplicationRecord
  validates :title, presence: true
  validates :note, presence: true
end
