class AddCartToRequestDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :request_details, :cart, foreign_key: true
  end
end
