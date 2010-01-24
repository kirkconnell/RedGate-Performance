class StringArrayMessagesController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @string_array_messages = StringArrayMessage.all
    render :xml => @string_array_messages
  end

  # GET /samples/1
  def show
    @string_array_message = StringArrayMessage.find(params[:id])
    render :xml => @string_array_message
  end
  
  # POST /samples
  def create
    @string_array_message = StringArrayMessage.new(params[:string_array_message])

    if @string_array_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @string_array_message, :status => :created, :location => @string_array_message
    else
      render :xml => @string_array_message.errors, :status => :unprocessable_entity
    end
  end  
end
