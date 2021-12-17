class ApplicationController < ActionController::Base

    def authorize
        unless helpers.current_user
          redirect_to login_url, notice: "Please log in"
        end
    end
end
