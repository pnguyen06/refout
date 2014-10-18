class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.text :description
      t.integer :bank_id
      t.string :street
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
