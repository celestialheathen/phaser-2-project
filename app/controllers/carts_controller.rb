class CartsController < ApplicationController
    def create
        @cart = current_customer.carts.create(cart_params)
    end

    private
    def cart_params
        params.require(:cart).permit(:customer_id, :ordered)
    end


end
