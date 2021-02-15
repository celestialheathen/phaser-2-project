class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.boolean :ordered

      t.timestamps
    end
  end
end
