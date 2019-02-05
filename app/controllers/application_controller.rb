class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	#All pages will ask for login
	before_action :authenticate_admin!	
end
