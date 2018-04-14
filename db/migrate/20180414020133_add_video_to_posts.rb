class AddVideoToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :video_thumbnail, :string
    add_column :posts, :video_src, :string
  end
end
