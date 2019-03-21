class InvoiceStatusCodesController < InheritedResources::Base

  private

    def invoice_status_code_params
      params.require(:invoice_status_code).permit(:name, :description)
    end
end

