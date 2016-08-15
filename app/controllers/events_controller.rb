class EventsController < ApplicationController

#the routes for the event
    def index
      events = Event.all
      render :json => events

    end

    def show
      event = Event.find(params[:id])
      render :json => event
    end

    def create
    @event = Event.create({
                    :event => params[:event],
                  })
    render :json => @event
    end
end


    # def edit


    # end

    # def update


    # end


    def destory


    end


