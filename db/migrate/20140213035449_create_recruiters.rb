class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :linkedin
      t.string :description

      t.timestamps
    end
  end
end
