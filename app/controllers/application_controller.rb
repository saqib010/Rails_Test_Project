class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	protect_from_forgery with: :exception

	rescue_from CanCan::AccessDenied do |exception|
  		render(
        html: "<script>alert('UnAuthorized Access!')</script>".html_safe,
        layout: 'application'
      )
  		#redirect_to root_url
	end
	# rescue_from CanCan::AccessDenied do |exception|
 #    	redirect_to root_url, :alert => exception.message
 #  	end
	# check_authorization
end
