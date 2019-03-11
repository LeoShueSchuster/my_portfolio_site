class PortfolioController < ApplicationController
    def index
        @contact = Contact.new
    end

    def resume
    end

    def view_resume
    end

    def projects
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
end
