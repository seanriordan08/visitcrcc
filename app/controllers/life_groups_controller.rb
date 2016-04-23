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
    demographic_hash = Hash[params["life_group"]["life_group_demographics"]["life_group_demographic"].collect {|d| [d, true] unless d == ''}]
    params["life_group"]["life_group_demographics"] = demographic_hash

    @life_group = LifeGroup.new(life_group_params)
    @life_group_demographic = @life_group.build_life_group_demographic(demographic_hash)

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
    params.require(:life_group).permit(:name, :day, :start_time, :end_time, :location, life_group_demographic_attributes: ['all_welcome','singles','unmarried_couples','married_couples','with_kids'])
  end

end