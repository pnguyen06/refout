class AddMegaToHeadhunters < ActiveRecord::Migration
  def change
    add_column :headhunters, :mega, :boolean
  end
end
