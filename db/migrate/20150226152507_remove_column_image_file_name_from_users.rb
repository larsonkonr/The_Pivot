class RemoveColumnImageFileNameFromUsers < ActiveRecord::Migration
  def change
   remove_column :users, :image_file_name, :sting
  end
end
