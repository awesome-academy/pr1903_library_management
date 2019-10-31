class CreateRequestDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :request_details do |t|
      t.integer :request_borrow_id
      t.integer :book_id
      t.integer :quanity
      t.integer :status
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
