class PurchasesController < ApplicationController

    def index 
        @purchases = Purchase.all 
    end 

    def show
        @purchase = Purchase.find(params[:id])
    end

    def create
        @cart = current_customer.carts.find_by(id: current_customer.id)
        @purchase = Purchase.new(purchase_params)
        @purchase.save
        redirect_to purchases_path
    end

    def add_to_cart
    end 

    private
    
    def purchase_params
        params.require(:purchase).permit(:cart_id, :item_id)
    end
    
end
