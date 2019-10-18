class MessageChannel < ApplicationCable::Channel
  def subscribed
   stream_from "message_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    #speakアクションが呼ばれたら、messageをデータベースに保存
    Message.create! content: data['message'], group_id: data['group_id']
    ActionCable.server.broadcast 'message_channel', message: data['message']
  end
end
