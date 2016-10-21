class Newsinfo < ApplicationRecord
  has_many :tasks
  validates :title, presence: { message:"文字いれろよ" }
end
