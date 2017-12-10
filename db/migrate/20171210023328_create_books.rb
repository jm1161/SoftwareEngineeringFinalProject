class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :brand
      t.string :name
      t.string :price
      t.string :url
      t.string :image
      t.string :asin

      t.timestamps
    end
  end
end
