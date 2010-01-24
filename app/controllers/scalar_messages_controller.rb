class ScalarMessagesController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @scalar_messages = ScalarMessage.all
    render :xml => @scalar_messages
  end

  # GET /samples/1
  def show
    @scalar_message = ScalarMessage.find(params[:id])
    render :xml => @scalar_message
  end
  
  # POST /samples
  def create
    @scalar_message = ScalarMessage.new(params[:scalar_message])

    if @scalar_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @scalar_message, :status => :created, :location => @scalar_message
    else
      render :xml => @scalar_message.errors, :status => :unprocessable_entity
    end
  end
end
