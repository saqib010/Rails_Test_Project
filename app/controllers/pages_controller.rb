class PagesController < ApplicationController

  def home
  end
  
  def mybug
    @mybugs = User.find(current_user.id).bugs   
  end

  def myproj
    @myprojs = User.find(current_user.id).project
  end

  def something
  end
  
  def userpage
      @myusers = User.all
  end
end
