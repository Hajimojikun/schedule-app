class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @rooms = Room.new
  end

  def create
    @rooms = Room.new(rooms_params)
     if @rooms.save
      redirect_to root_path
     else
      render :new
     end
  end

  def show
    @rooms = Room.find(params[:id])
  end

  def destroy
  end
  
  private
  def rooms_params
    params.require(:room).permit(:title, :description).merge(user_id: current_user.id)
  end
end
