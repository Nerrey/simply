class DestrIndFromPair2 < ActiveRecord::Migration
  def change
    remove_column :pairs, :word_class_id
    remove_column :pairs, :book_id
  end
end
