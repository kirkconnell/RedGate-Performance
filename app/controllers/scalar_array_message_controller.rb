class ScalarArrayMessageController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @scalar_array_messages = ScalarArrayMessage.all
    render :xml => @scalar_array_messages
  end

  # GET /samples/1
  def show
    @scalar_array_message = ScalarArrayMessage.find(params[:id])
    render :xml => @scalar_array_message
  end
  
  # POST /samples
  def create
    @scalar_array_message = ScalarArrayMessage.new(params[:scalar_array_message])

    if @scalar_array_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @scalar_array_message, :status => :created, :location => @scalar_array_message
    else
      render :xml => @scalar_array_message.errors, :status => :unprocessable_entity
    end
  end
end
