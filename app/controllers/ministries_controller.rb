class MinistriesController < ApplicationController


  def life_groups
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'life_groups').first.html_content
  end

  def mens
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'mens').first.html_content
  end

  def mens_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'life_groups').first.html_content
  end

  def womens
    @womens_director = User.where(role_description: "Women's Ministry Director").first
    @html_content = WelcomeContent.where(page_name: 'womens').first.html_content
  end

  def womens_serve
    @womens_director = User.where(role_description: "Women's Ministry Director").first
    @html_content = WelcomeContent.where(page_name: 'womens_serve').first.html_content
  end

  def youth
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'youth').first.html_content
  end

  def youth_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'youth_serve').first.html_content
  end

  def childrens
    @childrens_pastor = User.where(role_description: "Children's Ministry Pastor").first
    @html_content = WelcomeContent.where(page_name: 'childrens').first.html_content
  end

  def childrens_serve
    @childrens_pastor = User.where(role_description: "Children's Ministry Pastor").first
    @html_content = WelcomeContent.where(page_name: 'childrens_serve').first.html_content
  end

  def worship_arts
    @worship_pastor = User.where(role_description: "Worship Pastor").first
    @html_content = WelcomeContent.where(page_name: 'worship_arts').first.html_content
  end

  def worship_arts_serve
    @lead_pastor = User.where(role_description: "Lead Pastor").first
    @html_content = WelcomeContent.where(page_name: 'worship_arts_serve').first.html_content
  end

  def missions
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
    @html_content = WelcomeContent.where(page_name: 'missions').first.html_content
  end

  def missions_serve
    # @youth_pastor = User.where(role_description: "Youth Pastor").first
    @html_content = WelcomeContent.where(page_name: 'missions_serve').first.html_content
  end

  def save_html_content
    welcome_content = WelcomeContent.where(page_name: 'mens').first
    welcome_content.update(html_content: params[:html_content])

    respond_to do |format|
      format.js { render "ministry_page" }
    end
  end

end
