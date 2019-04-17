class ContactsController < HomeController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:alert] = nil
        else
            flash.now[:alert] = nil
            render :new
        end
    end
end
