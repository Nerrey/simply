class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.string :word
      t.string :translate1
      t.string :translate2
      t.string :translate3
      t.string :translate4
      t.belongs_to :word_class, index: true
      t.belongs_to :book, index: true
      t.timestamps null: false
    end
  end
end
