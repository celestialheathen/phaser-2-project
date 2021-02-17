class ReviewsController < ApplicationController
    
    def new
        @review = Review.new()
    end

    def create
        @review = Review.create(review_params)
        redirect_to item_path(@review.item)
    end

    private

    def review_params  
        params.require(:review).permit(:customer_id, :item_id, :rating, :body)
    end

end
