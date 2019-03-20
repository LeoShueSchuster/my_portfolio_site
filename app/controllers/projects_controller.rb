class ProjectsController < ApplicationController
    before_action :require_signin, except: [:index, :show, :contact]
    before_action :require_admin, except: [:index, :show, :contact]
    
    def index
        @contact = Contact.new
        @projects = Project.all
    end

    def contact
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:error] = nil
        else
            flash.now[:error] = nil
            render :new
        end
    end
    
    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
        redirect_to root_path
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.save
        redirect_to root_path
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to root_path
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :credit, :link)
    end

end
