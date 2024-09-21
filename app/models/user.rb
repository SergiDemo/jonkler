class User < ApplicationRecord
  has_many :jokes
  validates :username, presence: true, uniqueness: true
end
