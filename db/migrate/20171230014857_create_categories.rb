class CreateCategories < ActiveRecord::Migration[5.1]
  def up
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    remove_column :products, :category
    add_reference :products, :category, foreign_key: true, null: false
  end

  def down
    drop_table :categories
    add_column :products, :category, :string
    remove_reference :products, :category
  end
end
