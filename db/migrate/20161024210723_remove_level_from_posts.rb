class RemoveLevelFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :level, :string
  end
end
