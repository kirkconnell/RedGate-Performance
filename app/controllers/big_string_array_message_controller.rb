class BigStringArrayMessageController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @big_string_array_messages = BigStringArrayMessage.all
    render :xml => @big_string_array_messages
  end

  # GET /samples/1
  def show
    @big_string_array_message = BigStringArrayMessage.find(params[:id])
    render :xml => @big_string_array_message
  end
  
  # POST /samples
  def create
    @big_string_array_message = BigStringArrayMessage.new(params[:big_string_array_message])

    if @big_string_array_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @big_string_array_message, :status => :created, :location => @big_string_array_message
    else
      render :xml => @big_string_array_message.errors, :status => :unprocessable_entity
    end
  end
end
