class CreateFollowAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :follow_authors do |t|
      t.integer :user_id
      t.integer :author_id
      t.references :user, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
