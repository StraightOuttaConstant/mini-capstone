class CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.cart
    render 'index.json.jbuilder'
  end

  def create
    @carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "carted"
                                        )
    @carted_product.save
    render 'show.json.jbuilder'
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    render json: {message: "Product removed from cart"}
  end
end













