class RemoveUserFromSchools < ActiveRecord::Migration[5.2]
  def change
    remove_column :schools, :user, :string
  end
end
