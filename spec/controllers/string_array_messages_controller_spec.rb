require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StringArrayMessagesController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(StringArrayMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all string array messages as @string_array_messages" do
    StringArrayMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:string_array_messages].should == [mock_message]
  end
  
  it "assigns the requested string array message as @string_array_message" do
    StringArrayMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:string_array_message].should equal(mock_message)
  end

  it "assigns a newly created string array message as @string_array_message" do
    StringArrayMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :string_array_message => {:these => 'params'}
    assigns[:string_array_message].should equal(mock_message)
  end

end
