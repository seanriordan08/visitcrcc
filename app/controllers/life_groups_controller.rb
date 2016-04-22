class LifeGroupsController < ApplicationController

  def index
    @life_groups = LifeGroup.all.empty? ? nil : LifeGroup.all

    respond_to do |format|
      format.js { render locals: { life_groups: @life_groups } }
    end
  end

  def new
  end

  def create
    @life_group = LifeGroup.create(life_group_params)

    if @life_group.save
      flash[:notice] = "Saved!"
      redirect_to { life_groups_path }
    else
      flash[:notice] = "Failed!"
      redirect_to { life_groups_path }
    end
  end

  private

  def life_group_params
    params.require(:life_group).permit(:name, :day, :start_time, :end_time, :location, demographic: ['', 'all_welcome'])
  end

end