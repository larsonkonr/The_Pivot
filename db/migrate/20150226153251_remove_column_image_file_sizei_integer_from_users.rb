class RemoveColumnImageFileSizeiIntegerFromUsers < ActiveRecord::Migration
  def change
		remove_column :users, :image_file_size, :integer
  end
end
