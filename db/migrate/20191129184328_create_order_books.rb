class CreateOrderBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :order_books do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
