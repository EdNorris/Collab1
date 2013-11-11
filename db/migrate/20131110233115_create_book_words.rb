class CreateBookWords < ActiveRecord::Migration
  def change
    create_table :book_words do |t|
      t.integer :bookid
      t.integer :wordid
      t.integer :count

      t.timestamps
    end
  end
end
