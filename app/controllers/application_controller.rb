class ApplicationController < ActionController::Base

    helper_method :current_customer, :is_logged_in?

    def current_customer
        Customer.find_by(id: session[:customer_id])
    end

    def is_logged_in?
        !!current_customer
    end
    
end
