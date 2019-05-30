class School < ApplicationRecord
	
	belongs_to :user

	require 'csv'
	
	def self.import(file, user_id)
		@user = User.find_by(id: user_id)
		if @user
			CSV.foreach(file.path, headers: true) do |row| 
				@user.schools.create! row.to_hash
			end
		end
	end
end
