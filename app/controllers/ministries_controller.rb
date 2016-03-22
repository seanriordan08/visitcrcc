class MinistriesController < ApplicationController


  def life_groups
  end

  def mens
  end

  def womens
    @womens_director = User.where(role_description: "Women's Ministry Director").first
  end


end
