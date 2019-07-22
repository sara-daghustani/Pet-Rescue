class CommentsController < ApplicationController
    def index
        @comments = Comment.all  
    end	
    def new
        @comment = Comment.new
      end
      
        def create
          comment=Comment.new(params.require(:comment).permit(:content))
          comment.user_id = current_user.id
          redirect_to reports_path(@report)
      end
  
    def show
        @comment = Comment.find(params[:id])
    end

    def edit
        @comment = Comment.find(params[:id])
    end
    def update
        comment.update(params.require(:comment).permit(:content))
        redirect_to report_path(@report)
      end


      def destroy
        @comment = Comment.find(params[:id]).destroy
        redirect_to report_path(@report)
      end
end
