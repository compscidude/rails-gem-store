class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


    # Now this is available to all views as well
    helper_method :current_user

    # We will have the first user be logged in by default
    # This function will now be available to all controllers 
    def current_user
        @User = User.find(1)
    end 
  
    def items 
       
    end 
    


end
