# frozen_string_literal: true

class ExperiencesController < HomeController
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show]

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    redirect_to root_path
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.save
    redirect_to root_path
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to root_path
  end

  private

  def experience_params
    params.require(:experience).permit(
      :title, :date, :location,
      job_descriptions_attributes: %i[id description _destroy]
    )
  end
end
