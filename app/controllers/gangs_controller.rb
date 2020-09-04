class GangsController < ApplicationController
  def index
    @gangs = Gang.where(user: current_user)
  end

  def show
    @gang = Gang.find(params[:id])
    @territories = @gang.territories.all
  end

  def new
    @gang = Gang.new
  end

  def create
    @gang = Gang.new(gang_params)
    if @gang.save
      redirect_to gang_path(@gang)
    else
      render :new
    end
  end

  def edit
    @gang = Gang.find(params[:id])
  end

  def update
    @gang = Gang.find(params[:id])
    # raise
    @gang.name = gang_params[:name]
    if @gang.save
      redirect_to gang_path(@gang)
    else
      render :edit
    end
  end

  def destroy
    @gang = Gang.find(params[:id])
    @gang.destroy
    redirect_to gangs_path
  end

  private

  def gang_params
    params.require(:gang).permit(:name)
  end
end
