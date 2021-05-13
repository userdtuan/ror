class AdminController < ApplicationController
  before_action :authorize
    layout(false)
    def create_service
      @service = TblPostDichvu.new(params.require(:news).permit(:title, :slug, :desc, :content, :metadesc, :metakeyword,:img))
     
      if @service.save
        # If user saves in the db successfully:
        flash[:notice] = "Project created successfully!"
        redirect_to root_path
      end
    end
    def apply_edit_service
      @project = TblPostDichvu.find(params[:id_project])
      @project.update(params.require(:project).permit(:title, :slug, :desc, :content, :metadesc, :metakeyword,:img))
      # @this_project.title = 'hello'
      @project.save
      redirect_to service_admin_path
    end
    def edit_service
      @this_project = TblPostDichvu.find(params[:id_project])
    end
    def list_service
      @projects = TblPostDichvu.all
      def deletes
        TblPostDichvu.find(params[:id]).destroy
        redirect_to main_admin_path
      end
      def edit_news
        @this_project = TblPostTintuc.find(params[:id_project])
      end
    end
    def apply_edit_news
      @project = TblPostTintuc.find(params[:id_project])
      @project.update(params.require(:project).permit(:title, :slug, :desc, :content, :metadesc, :metakeyword,:img))
      # @this_project.title = 'hello'
      @project.save
      redirect_to news_admin_path
    end
    def edit_news
      @this_project = TblPostTintuc.find(params[:id_project])
    end
    def list_news
      @projects = TblPostTintuc.all
      def deleten
        TblPostTintuc.find(params[:id]).destroy
        redirect_to main_admin_path
      end
    end
    def create_news
      @news = TblPostTintuc.new(params.require(:news).permit(:title, :slug, :desc, :content, :metadesc, :metakeyword,:img))
      # @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))

      # store all emails in lowercase to avoid duplicates and case-sensitive login errors:
     
      if @news.save
        # If user saves in the db successfully:
        flash[:notice] = "Project created successfully!"
        redirect_to root_path
      end
  end
    def edit_project
      @this_project = TblPostProject.find(params[:id_project])
    end
    def apply_edit_project
      @this_project = TblPostProject.find(params[:id_project])

      def apply_edit_project
        @project = TblPostProject.find(params[:id_project])
        @project.update(project_params)
        # @this_project.title = 'hello'
        @project.save
        redirect_to news_admin_path
      end
    end
    
    def admin_layout
      # @num = "test"
      @projects = TblPostProject.all

      def deletep
        TblPostProject.find(params[:id]).destroy
        redirect_to main_admin_path
      end
    end
        def new
          @project = TblPostProject.new
        end
        def create
            @project = TblPostProject.new(project_params)
            # @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    
            # store all emails in lowercase to avoid duplicates and case-sensitive login errors:
           
            if @project.save
              # If user saves in the db successfully:
              flash[:notice] = "Project created successfully!"
              redirect_to root_path
            end
        end
    private

    def project_params
      # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
      # that can be submitted by a form to the user model #=> require(:user)
      params.require(:project).permit(:title, :slug, :desc, :content, :metadesc, :metakeyword,:status,'jpg')
    end
end
