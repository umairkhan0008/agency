class AddTypeToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :type, :integer
  end
end
