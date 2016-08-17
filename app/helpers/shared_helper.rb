module SharedHelper

  def get_contact(name)
    Contact.where(name: "#{name}").first
  end

end
