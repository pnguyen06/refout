class AddUpvoteToTips < ActiveRecord::Migration
  def change
    add_column :tips, :upvote, :integer
  end
end
