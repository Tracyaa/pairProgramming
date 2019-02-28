class CreateAuthorBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :author_books do |t|
      t.belongs_to :author, foreign_key: true
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
