class AddEventsImages < ActiveRecord::Migration

  def change
    add_column :events, :image, :string

    Event.create(title: 'Summer Worship Services', description: '', start_time: '2016-06-12 00:00:00', html_content: 'Event Information Coming Soon')
    Event.create(title: 'Scavanger Hunt', description: '', start_time: '2016-06-18 00:00:00', html_content: 'Event Information Coming Soon')
    Event.create(title: 'Family BBQ', description: '', start_time: '2016-07-16 00:00:00', html_content: 'Event Information Coming Soon')
    Event.create(title: 'Rock Park Hike', description: '', start_time: '2016-08-20 00:00:00', html_content: 'Event Information Coming Soon')
  end
end
