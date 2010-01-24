class StringBigArrayMessagesController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @string_big_array_messages = StringBigArrayMessage.all
    render :xml => @string_big_array_messages
  end

  # GET /samples/1
  def show
    @string_big_array_message = StringBigArrayMessage.find(params[:id])
    render :xml => @string_big_array_message
  end
  
  # POST /samples
  def create
    @string_big_array_message = StringBigArrayMessage.new(params[:string_big_array_message])

    if @string_big_array_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @string_big_array_message, :status => :created, :location => @string_big_array_message
    else
      render :xml => @string_big_array_message.errors, :status => :unprocessable_entity
    end
  end
end
