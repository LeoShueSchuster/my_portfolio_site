# frozen_string_literal: true

class AboutsController < HomeController
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show]

  def edit
    @about = About.first
  end

  def update
    @about = About.first
    @about.update(about_params)
    redirect_to root_path
  end

  private

  def about_params
    params.require(:about).permit(:first_name, :last_name, :address, :location_zip, :phone, :email, :description)
  end
end
