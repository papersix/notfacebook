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
    event = {name: params[:name], time: params[:time], description: params[:description]}
    @event = Event.create(event)
    render :json => @event
    end
end


    # def edit


    # end

    # def update


    # end


    def destroy


    end


