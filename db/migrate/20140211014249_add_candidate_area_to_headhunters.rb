class AddCandidateAreaToHeadhunters < ActiveRecord::Migration
  def change
    add_column :headhunters, :CompanyCandidateArea, :string
  end
end
