class PagesController < ApplicationController
  def home
    @myusers = User.all
  end
end
