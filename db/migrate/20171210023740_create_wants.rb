class CreateWants < ActiveRecord::Migration[5.1]
  def change
    create_table :wants do |t|
      t.string :user_id
      t.string :book_id

      t.timestamps
    end
  end
end
