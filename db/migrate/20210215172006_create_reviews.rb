class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :item, null: false, foreign_key: true
      t.integer :rating
      t.text :body

      t.timestamps
    end
  end
end
