class AddLikesAndCommentsNumberToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :likes, :integer
    add_column :posts, :num_comments, :integer  # for demo
  end
end
