class HomeController < ApplicationController

    def index
        @about = About.first

        @experiences = Experience.all

        @projects = Project.order(:position)

        @contact = Contact.new
    end
    
end
