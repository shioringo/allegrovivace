class PagesController < ApplicationController
  def index
    @user = User.find(1)
    @pieces = @user.pieces
    @symphonies = @pieces.where("name like ?", "%交響曲%")
    @other_pieces = @pieces.where("name not like ?", "%交響曲%")
  end
end
