class CartsController < ApplicationController
    def create
        if @cart == nil
            @cart = Cart.create(session[:customer_id], ordered: false)
            
        else
            add_to_cart
        end
    end


    def add_to_cart
        @purchase = Purchase.create(cart: @cart, item: @item)
    end

end
