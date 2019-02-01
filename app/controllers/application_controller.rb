class ApplicationController < ActionController::Base
	#All pages will ask for login
	before_action :authenticate_admin!	
end
