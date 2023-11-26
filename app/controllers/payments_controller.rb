class PaymentsController < ApplicationController
    before_action :authenticate_user!

    def pay
        @order = Order.find(params[:order_id])

        @payment_intent = Stripe::PaymentIntent.create({
            amount: @order.total,
            currency: 'usd',
            automatic_payment_methods: {enabled: true},
            description: "Order #{@order.id}"
        })
    end
end