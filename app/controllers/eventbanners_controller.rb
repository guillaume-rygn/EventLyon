class EventbannersController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @event.eventbanner.attach(params[:eventbanner])
    redirect_to(root_path)
  end
end
