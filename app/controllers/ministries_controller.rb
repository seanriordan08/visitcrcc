class MinistriesController < ApplicationController


  def life_groups
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def mens
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'mens').first.html_content
  end

  def mens_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def womens
    @womens_director = User.where(role_description: "Women's Ministry Director").first
  end

  def womens_serve
    @womens_director = User.where(role_description: "Women's Ministry Director").first
  end

  def youth
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def youth_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def childrens
    @childrens_pastor = User.where(role_description: "Children's Ministry Pastor").first
  end

  def childrens_serve
    @childrens_pastor = User.where(role_description: "Children's Ministry Pastor").first
  end

  def worship_arts
    @worship_pastor = User.where(role_description: "Worship Pastor").first
  end

  def worship_arts_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
  end

  def missions
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
  end

  def missions_serve
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
  end

end
