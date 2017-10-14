class ApplicationController < ActionController::Base
	 protect_from_forgery with: :exception
	 layout  'students'

	 def for_devise
	 	'students'
	 end
end
 