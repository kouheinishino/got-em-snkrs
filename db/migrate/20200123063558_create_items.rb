class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :商品名
      t.date :発売日
      t.integer :タイプ
      t.boolean :コラボ

      t.timestamps
    end
  end
end
