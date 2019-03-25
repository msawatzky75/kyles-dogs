class AddProductStatusCodeToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :product_status_code, foreign_key: true
  end
end
