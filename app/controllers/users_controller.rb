class UsersController < ApplicationController

  def index
    # @users = User.where('name LIKE(?)', "%#{params[:keyword]}%").limit(6)
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  	@tags = Tag.all
  end


end
