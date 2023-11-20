class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @tickets = @user.tickets
  end
end
