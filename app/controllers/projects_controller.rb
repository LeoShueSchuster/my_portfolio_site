class ProjectsController < ApplicationController
    before_action :require_signin, except: [:index, :show]
    before_action :require_admin, except: [:index, :show]
    
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
