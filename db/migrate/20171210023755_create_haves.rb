class CreateHaves < ActiveRecord::Migration[5.1]
  def change
    create_table :haves do |t|
      t.string :user_id
      t.string :book_id

      t.timestamps
    end
  end
end
