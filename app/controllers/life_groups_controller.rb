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
  end

  private

  def life_group_params
    params.require(:life_group).permit(:name, :date, :start_time, :end_time, :demographic, :location)
  end

end