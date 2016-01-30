class CreateAnagrams < ActiveRecord::Migration
  def change
    create_table :anagrams do |t|
      t.string :first_sentence
      t.string :second_sentence
      t.boolean :is_anagram

      t.timestamps null: false
    end
  end
end
