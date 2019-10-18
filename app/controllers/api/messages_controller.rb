class Api::MessagesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @messages = @group.messages.all
    render json: @messages
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
