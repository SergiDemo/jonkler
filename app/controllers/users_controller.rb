class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @jokes = @user.jokes
  end
end
