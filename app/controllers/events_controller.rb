class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def index
		@events = Event.all
	end

	def create
		@user = User.find(params[:user_id])
		@event = @user.events.create(event_params)
		redirect_to user_path(@user)
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])

		if @event.update(event_params)
			redirect_to @event
		else
			render 'edit'
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy

		redirect_to events_path
	end

	private
	def event_params
		params.require(:event).permit(:name, :description, :start, :end)
	end
end
