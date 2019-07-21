class ReportsController < ApplicationController
    def index
        @reports = Report.all  
    end
    def new
        @report = Report.new
    end
    def create
        Report.create(params.require(:report).permit(:reporttype, :img, :petname, :species,
             :gender, :color, :descriptions, :address, :date, :phone, :email))
        redirect_to reports_path
    end
    def show
        @report = Report.find(params[:id])
      end
      
end
