class AddCommentsCounterToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :comments_counter, :integer
  end
end
