class CreateSchoolUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :school_users do |t|
      t.integer :school_id
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end
