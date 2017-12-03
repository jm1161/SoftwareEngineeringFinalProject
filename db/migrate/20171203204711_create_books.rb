class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :authors
      t.string :publisher
      t.integer :publishDate
      t.text :description
      t.integer :isbn10
      t.integer :isbn13
      t.string :image

      t.timestamps
    end
  end
end
