class MinistriesController < ApplicationController


  def life_groups
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def mens
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def womens
    @womens_director = User.where(role_description: "Women's Ministry Director").first
  end

  def youth
    @youth_pastor = User.where(role_description: "Youth Pastor").first
  end

  def childrens
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
  end

  def worship_arts
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
  end

  def missions
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
  end

end
