class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :stock
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
