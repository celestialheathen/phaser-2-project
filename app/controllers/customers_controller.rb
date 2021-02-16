class CustomersController < ApplicationController
    def new
        @customer = Customer.new()
    end

    def create
        @customer = Customer.create(customer_params)
        session[:customer_id] = @customer.id
        
        redirect_to items_path
    end

    def login
    end

    def handle_login
        @customer = Customer.find_by(username: params[:username])
        if @customer && @customer.authenticate(params[:password])
            session[:customer_id] = @customer.id
            redirect_to items_path
        else
            flash[:errors] = ["Incorrect Username or Password"]
            redirect_to login_path
        end
    end

    private

    def customer_params
        params.require(:customer).permit(:username, :password)
    end

end
