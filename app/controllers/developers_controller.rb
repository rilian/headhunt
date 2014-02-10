class DevelopersController < ApplicationController
  def index
    @developers = Developer.order(id: :desc).all
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)

    if @developer.save
      redirect_to developers_path
    else
      render :new
    end
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def update
    @developer = Developer.find(params[:id])
    if @developer.update(developer_params)
      redirect_to developers_path
    else
      render :edit
    end
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy
    redirect_to developers_path
  end

  private
  
  def developer_params
    params.require(:developer).permit(
      :name, :city, :speciality, :current_position, :current_company, :time_at_current_company,
      :technologies, :skills, :birthday, :linkedin, :github, :other_links, :recommended_by,
      :notes, :initial_speaking_notes, :tech_interview_notes, :vlad_notes, :test_assignment_notes,
      :is_need_speaking, :is_accepted, :is_rejected, :is_working
    )
  end
end