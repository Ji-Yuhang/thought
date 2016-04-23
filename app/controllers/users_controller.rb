class UsersController < ApplicationController
  before_action :set_user
  def index

  end
  def show

  end
  def edit

  end

  def creatre

  end
  def update
    binding.pry
  end
  def destroy

  end

  private
    def set_user
      @user ||= current_user
    end
end
