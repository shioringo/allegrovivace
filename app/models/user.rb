class User < ApplicationRecord
  has_many :user_pieces
  has_many :pieces, through: :user_pieces
end
