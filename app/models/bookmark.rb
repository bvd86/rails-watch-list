class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 , maximum: 50}
  validates :movie, uniqueness: { scope: :list, message: "Movie already exist in that list" }
end
