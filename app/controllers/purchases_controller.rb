class PurchasesController < ApplicationController

    def index 
        @purchases = Purchase.all 
    end 

    def show
        @purchase = Purchase.find(params[:id])
    end

    def create
        @cart = current_customer.carts.find_by(customer_id: current_customer.id)
        if @cart 
            @purchase = @cart.purchases.new(purchase_params)
            @purchase.save
            @purchase.item.update(stock: @purchase.item.stock - 1)
            redirect_to purchases_path
        else  
            @cart = current_customer.carts.create(customer_id: current_customer.id)
            @purchase = @cart.purchases.new(purchase_params)
            @purchase.save
            @purchase.item.update(stock: @purchase.item.stock - 1)
            redirect_to purchases_path
        end 
    end

    def add_to_cart
    end 

    def destroy
        @purchase = Purchase.find(params[:id])
        @purchase.destroy
        @purchase.item.update(stock: @purchase.item.stock + 1)
        redirect_to purchases_path
    end


    private
    
    def purchase_params
        params.require(:purchase).permit(:cart_id, :item_id)
    end
    
end
