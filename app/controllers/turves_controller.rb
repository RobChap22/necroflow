class TurvesController < ApplicationController

  def new
    @gang = Gang.find(params[:gang_id])
    @turf = Turf.new
    @territories = Territory.order(:name).where.not(id: @gang.territories)
  end

  def create
    @gang = Gang.find(params[:gang_id])
    @territory = Territory.find(turf_params[:territory_id])
    @turf = Turf.new(territory: @territory, gang: @gang)
    if @turf.save
      redirect_to gang_path(@gang)
    else
      render :new
    end
  end

  private

  def turf_params
    params.require(:turf).permit(:territory_id)
  end
end
