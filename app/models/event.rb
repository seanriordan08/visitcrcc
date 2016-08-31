class Event < ActiveRecord::Base

  has_and_belongs_to_many :users

  def self.all_active
    all.collect { |e| e if e.active }.compact
  end

end

# == Schema Information
#
# Table name: events
#
#  id                 :integer          not null, primary key
#  title              :string(255)      default("Event Title"), not null
#  description        :text(65535)
#  start_time         :datetime
#  end_time           :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image              :string(255)
#  last_modified_by   :string(255)
#  last_modified_date :datetime
#  active             :boolean          default(FALSE)
#
