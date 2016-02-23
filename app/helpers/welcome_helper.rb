module WelcomeHelper

  def icon_link(icon_name, text, link)
    link_to content_tag(:i, text, :class => "large material-icons"), link
  end
end
