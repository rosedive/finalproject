class AddApprovedToOrderBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :order_books, :approved, :boolean
  end
end
