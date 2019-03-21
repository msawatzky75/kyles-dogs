class ProductStatusCodesController < InheritedResources::Base

  private

    def product_status_code_params
      params.require(:product_status_code).permit(:name, :description)
    end
end

