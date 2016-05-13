class EventsController < ApplicationController

  def index
    @contents = Event.all_active
  end

end
