class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.belongs_to :user
      t.string :school_name
      t.integer :external_id
      t.string :phone
      t.string :address
      t.string :zip
      t.string :kind
      t.string :principal_name
      t.string :principal_email

      t.timestamps
    end
  end
end
