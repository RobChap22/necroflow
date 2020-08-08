class GangsController < ApplicationController
  def index
    @gangs = Gang.all
  end

  def show
    @gang = Gang.find(params[:id])
  end
end
