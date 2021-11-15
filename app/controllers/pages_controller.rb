class PagesController < ApplicationController
  def home
  end

  def userpage
      @myusers = User.all
  end
end
