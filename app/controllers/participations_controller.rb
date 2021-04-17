class ParticipationsController < ApplicationController
  def index
    @participation = Participation.new
    @participations = Participation.all

  end

  def show
    @participation = Participation.find(params[:id])
  end

  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(participation_params)
    @participation.save
    redirect_to participations_path
  end

  def edit
    @participation = Participation.find(params[:id])
  end

  def update
    @participation = Participation.find(params[:id])
    @participation.update(participation_params)
    redirect_to participations_path
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
    redirect_to participations_path
  end

  private

  def participation_params
    params.require(:participation).permit(:first_name, :last_name, :participation)

  end
end
