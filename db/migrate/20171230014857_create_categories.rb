class CreateCategories < ActiveRecord::Migration[5.1]
  def up
    enable_extension 'citext'

    create_table :categories do |t|
      t.citext :name, null: false

      t.timestamps
    end
    add_index :categories, :name, unique: true

    remove_column :products, :category
    add_reference :products, :category, foreign_key: true, null: false
  end

  def down
    drop_table :categories, force: :cascade
    add_column :products, :category, :string
    remove_reference :products, :category
  end
end
