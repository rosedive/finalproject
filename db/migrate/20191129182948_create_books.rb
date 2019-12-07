class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :author
      t.string :description
      t.string :status
      t.text :image

      t.timestamps
    end
  end
end
