class AddColumnUserToSchool < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :user, :string
  end
end
