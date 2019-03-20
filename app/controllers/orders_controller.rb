class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:date)
    end
end

