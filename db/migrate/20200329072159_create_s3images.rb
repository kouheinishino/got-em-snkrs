class CreateS3images < ActiveRecord::Migration[5.2]
  def change
    create_table :s3images do |t|
      t.string :title
      t.string :file_name
      t.string :comment

      t.timestamps
    end
  end
end
