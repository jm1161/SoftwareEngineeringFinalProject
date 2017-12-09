class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 	
 	def after_sign_in_path_for(resource_or_scope)
 		'/landing'
 	end
  protected
  
  def admin_only!
		if !current_user.admin?
			redirect_to "/"
		end
	end

end
