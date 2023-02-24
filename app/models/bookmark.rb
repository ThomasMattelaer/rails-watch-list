class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }, presence: true
  validates :movie, uniqueness: { scope: :list }
end
