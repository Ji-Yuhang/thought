class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end
  def about
  end
  def help
  end
  def contact
  end
end
