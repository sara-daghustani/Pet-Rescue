class PagesController < ApplicationController
before_action :authenticate_user!, only: :private_page

  def home
    @reports = Report.all  
    @reports = Report.where(["reporttype ILIKE ?","%#{params[:search]}%"])
    @reports = Report.where(["city ILIKE ?","%#{params[:search]}%"])
  end

  def private_page
    @email = current_user.email
  end 

end
