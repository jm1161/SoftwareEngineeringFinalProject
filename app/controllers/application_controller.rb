class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
 	

  protected
  
  def admin_only!
		if !current_user.admin?
			redirect_to "/"
		end
	end

=======
>>>>>>> parent of f4b2927... created books scaffold
end
