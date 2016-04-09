class EventsController < ApplicationController

  def index
    @contents = Event.all
  end

end
