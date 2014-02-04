class CreateHeadhunters < ActiveRecord::Migration
  def change
    create_table :headhunters do |t|
      t.string :CompanyName
      t.string :CompanyDescription
      t.string :CompanyEmail

      t.timestamps
    end
  end
end
