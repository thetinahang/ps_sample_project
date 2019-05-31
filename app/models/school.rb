class School < ApplicationRecord
	
	belongs_to :user
	validates_presence_of :school_name, :message => "Missing school name" 
	validates_presence_of :external_id, :message => "Missing external id" 
	validates_presence_of :phone, :message => "Missing external id" 
	validates_presence_of :zip, :message => "Missing zip" 
	validates_presence_of :kind, :message => "Missing kind" 
	validates_presence_of :principal_name, :message => "Missing principal name" 
	validates_presence_of :principal_email, :message => "Missing principal email" 

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
