class CommentsController < ApplicationController
    # def index
    #     @comments = Comment.all  
    # end	
    def new
        @comment = Comment.new
      end
      def create
        @report = @report.find(params[:report_id])
        @comment = @report.comments.create(params.require(:comment).permit(:content))
        redirect_to report_path(@report)
    end
    def show
        @comment = Comment.find(params[:id])
    end
    def edit
        @comment = Comment.find(params[:id])
    end
    def update
        comment = Comment.find(params[:id])
        comment.update(params.require(:comment).permit( :content))
        redirect_to comment
      end


      def destroy
        @report = @report.find(params[:report_id])
        @comment = @report.comments.find(params[:id]).destroy
        redirect_to report_path(@report)
      end
end
