class UsersController < ApplicationController
  before_filter :authenticate_user!
  skip_before_filter :verify_authenticity_token, :only => [:create]

  def show
    @user = User.find(params[:id])

  end
end
