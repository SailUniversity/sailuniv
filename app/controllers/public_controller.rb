class PublicController < ApplicationController
  def index
  end

  def about
  end

  def free
  end

  def nav
    if user_signed_in?
      @user = User.current
    end
  end

  def footer
  end
end
