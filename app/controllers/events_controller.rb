class EventsController < ApplicationController

  def index
    @contents = Event.all_active
  end

  def deactivate_event
    event = Event.find(params[:id])
    event.update_attributes(active: false)

    respond_to do |format|
      format.js { render locals: { event_id: event.id } }
    end
  end

end
