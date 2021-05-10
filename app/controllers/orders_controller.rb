class OrdersController < ApplicationController
  before_action :set_order, only: :show

  def show; end

  def create
    @order = Order.new(order_params)
    if @order.save
      render :show, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(
      :name, :phone_number, :restaurant_id, :address, :city, :neighborhood, :street, :number, :complement,
      order_products_attributes: %i[quantity comment product_id]
    )
  end
end
