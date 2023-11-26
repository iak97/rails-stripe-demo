class PaymentsController < ApplicationController
    before_action :authenticate_user!

    def pay
        @order = Order.find(params[:order_id])
    end
end