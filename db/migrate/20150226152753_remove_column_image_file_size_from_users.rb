class RemoveColumnImageFileSizeFromUsers < ActiveRecord::Migration
  def change
		remove_column :users, :image_content_type, :string 
  end
end
