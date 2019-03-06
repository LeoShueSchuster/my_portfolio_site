class PortfolioController < ApplicationController
    def index
    end

    def resume
    end

    def view_resume
        send_file '/home/leo/my_portfolio_site/app/assets/images/Leo_Schuster_Resume.pdf', type: 'application/pdf', disposition: 'inline'
    end

    def projects
    end

    def contact
    end
end
