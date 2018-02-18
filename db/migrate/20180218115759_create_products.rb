class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :price
      t.point :location
      t.string :type
      t.string :state
      t.string :size
      t.string :color
      t.string :brand
      t.decimal :volume

      t.timestamps
    end
  end
end
