class StringMessageController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @string_messages = StringMessage.all
    render :xml => @string_messages
  end

  # GET /samples/1
  def show
    @string_message = StringMessage.find(params[:id])
    render :xml => @string_message
  end
  
  # POST /samples
  def create
    @string_message = StringMessage.new(params[:string_message])

    if @string_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @string_message, :status => :created, :location => @string_message
    else
      render :xml => @string_message.errors, :status => :unprocessable_entity
    end
  end
end
