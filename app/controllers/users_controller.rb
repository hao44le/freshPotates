class UsersController < ApplicationController
  before_action :authenticate_user!


  def show
    redirect_to :back
  end

end
