class HomeController < ApplicationController

    def index
        @projects = Project.all

        @contact = Contact.new
    end
    
end
