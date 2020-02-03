class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :release_date
      t.integer :category
      t.string :collaboration
      t.text :description
      t.string :image_path

      t.timestamps
    end
  end
end
