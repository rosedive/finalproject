class Book < ApplicationRecord
    paginates_per 2
    mount_uploader :image, ImageUploader
    has_many :comments
    belongs_to :user
    validates :book_title, presence: true
    validates :author, presence: true
    validates :description, presence: true
    validates :status, presence: true
    validates :image, presence: true
    def self.search(search)
      if term
        where('book_title LIKE ?', "%#{search}%")
      else
        order('id desc')
      end
    end
    def self.order_list(sort_order)
      if sort_order == "book_title"
        order(book_title: :desc)
      else
        order(created_at: :desc)
      end
    end
end
