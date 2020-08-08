class TurvesController < ApplicationController

  def new
    @gang = Gang.find(params[:gang_id])
    @turf = Turf.new
    @territories = Territory.all
  end

  def create
    @gang = Gang.find(params[:gang_id])
    @territory = Territory.find(turf_params[:territory_id])
    @turf = Turf.new(territory: @territory, gang: @gang)
  end

  private

  def turf_params
    params.require(:turf).permit(:territory_id)
  end
end
