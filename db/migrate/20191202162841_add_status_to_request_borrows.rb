class AddStatusToRequestBorrows < ActiveRecord::Migration[5.2]
  def change
    add_column :request_borrows, :status, :integer
  end
end
