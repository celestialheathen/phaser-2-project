class PurchasesController < ApplicationController
    def show
        @purchase = Purchase.find(params[:id])
    end

    def create
        @cart = current_customer.cart
        @purchase = @cart.purchases.create(purchase_params)
        redirect_to
    end

    private
    
    def purchase_params
        params.require(:purchase).permit(:cart_id, :item_id)
    end
    
end
