class ReportsController < ApplicationController
    before_action :authenticate_user!, only: [:index, :create, :edit, :update, :destroy, :new, :show]
    before_action :check_id, only: [:index]
    before_action :check_if_owner, only: [:edit, :update, :destroy,]
    def index

    end

    def new
        @report = Report.new
    end
    def create
        report = Report.new(params.require(:report).permit(:reporttype, :img, :petname, :species,
             :gender, :color, :descriptions, :address,:city, :date, :phone, :email))
        report.user_id = current_user.id
        report.save!
        redirect_to reports_path
    end
    def show
        @report = Report.find(params[:id])
        @comment = Comment.new
        respond_to do |format|
          format.html 
          format.pdf do
            pdf = ReportPdf.new(@report)
            send_data pdf.render, filename: 'report.pdf', type: 'appliaction/pdf', disposition: 'inline'
        end
      end
    end

    def edit
        @report = Report.find(params[:id])
    end
    def update
        report = Report.find(params[:id])
        report.update(params.require(:report).permit(:reporttype, :img, :petname, :species,
            :gender, :color, :descriptions, :address, :city, :date, :phone, :email))
        redirect_to report
      end
      def destroy
        Report.find(params[:id]).destroy
        redirect_to reports_path
      end

      private
    
      def check_id
        @report = current_user.reports
      end
      def check_if_owner
        @report = Report.find(params[:id])
        if current_user.id != @report.user_id
        redirect_to @report
        end
      end
end
