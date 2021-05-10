class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.float :delivery_tax
      t.string :city
      t.string :street
      t.string :neighborhood
      t.string :state
      t.string :number
      t.string :complement
      t.references :category, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
