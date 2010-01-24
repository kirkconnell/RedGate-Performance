require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe BigStringArrayMessagesController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(BigStringArrayMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all big string array messages as @big_string_array_messages" do
    BigStringArrayMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:big_string_array_messages].should == [mock_message]
  end
  
  it "assigns the requested big string array message as @big_string_array_message" do
    BigStringArrayMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:big_string_array_message].should equal(mock_message)
  end

  it "assigns a newly created big string array message as @big_string_array_message" do
    BigStringArrayMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :big_string_array_message => {:these => 'params'}
    assigns[:big_string_array_message].should equal(mock_message)
  end
  
end
