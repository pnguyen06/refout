class AddTitleToTips < ActiveRecord::Migration
  def change
    add_column :tips, :title, :text
  end
end
