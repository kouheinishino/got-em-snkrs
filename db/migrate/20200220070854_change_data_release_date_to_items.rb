class ChangeDataReleaseDateToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :release_date, :date
  end
end
