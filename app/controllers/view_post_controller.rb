class ViewPostController < ApplicationController
  def listtintuc
    @posts = TblPostTintuc.all
  end
    def home_post_project
        @post = TblPostProject.find_by(slug:params[:slug_project])
        @postall = TblPostTintuc.all
      end
      def show_news
        @post = TblPostTintuc.find_by(slug:params[:slug_project])
        @posts = TblPostTintuc.all
      end
      def list_service
        @post = TblPostDichvu.find_by(slug:params[:slug_project])
        @projects = TblPostDichvu.all
      end
      def show_service
        @post = TblPostDichvu.find_by(slug:params[:slug_project])
        @posts = TblPostTintuc.all
      end
end
