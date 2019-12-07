class ChangeColumnInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :book_title, :string, null: false
    change_column :books, :status, :string, null: false
    change_column :books, :author, :string, null: false
    change_column :books, :image, :string, null: false
  end
end
