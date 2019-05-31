class SchoolsController < ApplicationController
  before_action :authenticate_user! 

  def index
  	@user = current_user
  	@schools = @user.schools.all
  end

  def import
  	School.import(params[:file], current_user.id)
  	redirect_to root_url, notice: "School data imported"
  end

  def destroy_multiple
    new_params = params.except[:school_ids]
    School.destroy(new_params)
    redirect_to root_url, notice: "Successfully created schools"
  end
end
