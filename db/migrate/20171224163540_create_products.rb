class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :quantity, null: false
      t.boolean :for_sale, default: true
      t.date :available_on, null: false
      t.date :discontinued_on
      t.text :image_data

      t.timestamps
    end
  end
end
