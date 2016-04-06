class MinistriesController < ApplicationController


  def life_groups
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @content = WelcomeContent.where(page_name: 'life_groups').first
  end

  def mens
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @content = WelcomeContent.where(page_name: 'mens').first
  end

  def mens_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @content = WelcomeContent.where(page_name: 'mens_serve').first
  end

  def womens
    @womens_director = User.where(role_description: "Women's Ministry Director").first
    @content = WelcomeContent.where(page_name: 'womens').first
  end

  def womens_serve
    @womens_director = User.where(role_description: "Women's Ministry Director").first
    @content = WelcomeContent.where(page_name: 'womens_serve').first
  end

  def youth
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @content = WelcomeContent.where(page_name: 'youth').first
  end

  def youth_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @content = WelcomeContent.where(page_name: 'youth_serve').first
  end

  def childrens
    @childrens_pastor = User.where(role_description: "Children's Ministry Pastor").first
    @content = WelcomeContent.where(page_name: 'childrens').first
  end

  def childrens_serve
    @childrens_pastor = User.where(role_description: "Children's Ministry Pastor").first
    @content = WelcomeContent.where(page_name: 'childrens_serve').first
  end

  def worship_arts
    @worship_pastor = User.where(role_description: "Worship Pastor").first
    @content = WelcomeContent.where(page_name: 'worship_arts').first
  end

  def worship_arts_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @content = WelcomeContent.where(page_name: 'worship_arts_serve').first
  end

  def missions
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
    @content = WelcomeContent.where(page_name: 'missions').first
  end

  def missions_serve
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
    @content = WelcomeContent.where(page_name: 'missions_serve').first
  end

  def save_html_content
    welcome_content = WelcomeContent.where(page_name: params[:page_name]).first
    welcome_content.save_html_content(current_user, params[:html_content])

    respond_to do |format|
      format.js { render "ministry_page" }
    end
  end

end
