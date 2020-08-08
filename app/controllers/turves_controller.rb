class TurvesController < ApplicationController

  def new
    @gang = Gang.find(params[:gang_id])
    @turf = Turf.new
    @territories = Territory.all
  end
end
