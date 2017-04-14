class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


    # Now this is available to all views as well
    helper_method :current_user
    helper_method :items

    # We will have the first user be logged in by default
    # This function will now be available to all controllers 
    def current_user
        @User = User.find(3)
    end 
  
    def items 
       @Items = Item.all
    end 

end
