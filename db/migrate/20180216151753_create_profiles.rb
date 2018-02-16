class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.point :location
      t.string :image_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
