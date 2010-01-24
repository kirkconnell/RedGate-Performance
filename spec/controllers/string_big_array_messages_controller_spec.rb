require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StringBigArrayMessagesController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(StringBigArrayMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all string big array messages as @string_big_array_messages" do
    StringBigArrayMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:string_big_array_messages].should == [mock_message]
  end
  
  it "assigns the requested string big array message as @string_big_array_message" do
    StringBigArrayMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:string_big_array_message].should equal(mock_message)
  end

  it "assigns a newly created string big array message as @string_big_array_message" do
    StringBigArrayMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :string_big_array_message => {:these => 'params'}
    assigns[:string_big_array_message].should equal(mock_message)
  end

end
