class Piece < ApplicationRecord
  has_many :users, through: :user_pieces
  has_many :user_pieces
  belongs_to :composer
end