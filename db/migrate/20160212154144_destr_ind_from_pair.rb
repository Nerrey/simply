class DestrIndFromPair < ActiveRecord::Migration
  def change
    remove_index :pairs, :word_class_id
    remove_index :pairs, :book_id
  end
end
