class AddPairBook < ActiveRecord::Migration
  def change
    create_table :books_pairs do |t|
      t.belongs_to :book, index: true
      t.belongs_to :pair, index: true
    end

    create_table :pairs_word_classes do |t|
      t.belongs_to :word_class, index: true
      t.belongs_to :pair, index: true
    end
  end
end
