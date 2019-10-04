class PagesController < ApplicationController
before_action :authenticate_user!, only: :private_page



  def home 
    @reports = Report.where("reporttype ILIKE ? AND city ILIKE ? AND species ILIKE ?", "%#{params[:reporttype]}%", "%#{params[:city]}%", "%#{params[:species]}%")
    .order(:created_at).reverse
  end

  def private_page
    @email = current_user.email
  end 

end
