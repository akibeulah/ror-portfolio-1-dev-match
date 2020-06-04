# frozen_string_literal: true

class ConversationsController < ApplicationController
  before_action :set_conversation, except: [:index]
  before_action :check_participating!, except: [:index]

  def index
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @personal_message = PersonalMessage.new
  end

  private

  def set_conversation
    @conversation = Conversation.find_by(id: params[:c])
  end

  def check_participating!
    redirect_to root_path unless @conversation&.participates?(current_user)
  end
end
