class LifeGroupsController < ApplicationController

  def index
    @life_groups = LifeGroup.all.empty? ? "Lets Create the First Life Group!" : LifeGroup.all

    respond_to do |format|
      format.js { render locals: { life_groups: @life_groups } }
    end
  end

end