class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.integer :edition
      t.integer :isbn
      t.float :price
      t.string :condition
      t.integer :user_id

      t.timestamps
    end
  end
end
