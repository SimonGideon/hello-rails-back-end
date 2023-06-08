class Api::V1::MessagesController < ApplicationController
  def random_greetings
    message = Message.order('RANDOM()').first
    render json: { greeting: message.greeting }
  end
end
