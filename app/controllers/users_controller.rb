class UsersController < ApplicationController

  def

  def sign_up
    @distributors = Distributor.all
  end

  def show
    @user = current_user
  end

  def distributors
    @distributors = Distributor.all
  end

  def edit
    @distributors = Distributor.all
  end

  def search

  end

end
