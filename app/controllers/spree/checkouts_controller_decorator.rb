module Spree
  CheckoutController.class_eval do
    def completion_route
      if @order.payments.first.source_type == "Spree::IdealPayment"
        @order.payments.first.source.payment_redirect_url
      else
        order_path(@order)
      end
    end
  end
end
