class AddAutherIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :auther_id, :integer
  end
end
