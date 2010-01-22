class BigStringMessageController < ApplicationController
  # GET /samples
  # GET /samples.xml
  def index
    @big_string_messages = BigStringMessage.all
    render :xml => @big_string_messages
  end

  # GET /samples/1
  def show
    @big_string_message = BigStringMessage.find(params[:id])
    render :xml => @big_string_message
  end
  
  # POST /samples
  def create
    @big_string_message = BigStringMessage.new(params[:big_string_message])

    if @big_string_message.save
      flash[:notice] = 'Sample was successfully created.'
      render :xml => @big_string_message, :status => :created, :location => @big_string_message
    else
      render :xml => @big_string_message.errors, :status => :unprocessable_entity
    end
  end
end
