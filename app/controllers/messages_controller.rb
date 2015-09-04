class MessagesController < ApplicationController
  def index
  end
  
  def create
    @message = Message.new(message.params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  
  class MessagesController < ApplicationController
    def index
      @messages = Message.all
    end
  
end
