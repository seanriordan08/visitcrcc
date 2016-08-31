class Contact < ActiveRecord::Base
end

# == Schema Information
#
# Table name: contacts
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  primary_phone   :string(255)
#  secondary_phone :string(255)
#  primary_email   :string(255)
#  secondary_email :string(255)
#
