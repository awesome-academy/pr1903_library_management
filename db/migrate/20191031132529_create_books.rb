class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :name
      t.text :content
      t.integer :quanity
      t.boolean :status
      t.float :rate_average
      t.string :picture
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
