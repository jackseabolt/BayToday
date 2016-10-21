class AddUserIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :User_Id, :integer
  end
end
