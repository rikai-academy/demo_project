class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price
      t.time :expiration_date
      t.integer :status

      t.timestamps
    end
  end
end
