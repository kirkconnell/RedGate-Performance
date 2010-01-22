class ScalarBigArrayMessageController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @scalar_big_array_messages = ScalarBigArrayMessage.all
    render :xml => @scalar_big_array_messages
  end

  # GET /samples/1
  def show
    @scalar_big_array_message = ScalarBigArrayMessage.find(params[:id])
    render :xml => @scalar_big_array_message
  end
  
  # POST /samples
  def create
    @scalar_big_array_message = ScalarBigArrayMessage.new(params[:scalar_big_array_message])

    if @scalar_big_array_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @scalar_big_array_message, :status => :created, :location => @scalar_big_array_message
    else
      render :xml => @scalar_big_array_message.errors, :status => :unprocessable_entity
    end
  end
end
