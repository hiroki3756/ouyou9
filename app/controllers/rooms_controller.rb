class RoomsController < ApplicationController
    def show
        @user = User.find(params[:id])
        @room = Room.find(params[:id])
        @chats = @room.chats
      end
      
      def create
        @room = Room.new(room_params)
        @room.save
        current_user.user_rooms.create(room_id: @room.id)
        redirect_to @room
      end
      
      private
      def room_params
        params.require(:room).permit(:name)
      end
end
