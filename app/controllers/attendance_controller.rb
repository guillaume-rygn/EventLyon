class AttendanceController < ApplicationController

  def new
    @total = Event.find(params[:event_id]).price
  end

  def create
    
  end
end
