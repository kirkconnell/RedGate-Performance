require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StringMessageController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(StringMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all string messages as @string_messages" do
    StringMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:string_messages].should == [mock_message]
  end
  
  it "assigns the requested string message as @string_message" do
    StringMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:string_message].should equal(mock_message)
  end

  it "assigns a newly created string message as @string_message" do
    StringMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :string_message => {:these => 'params'}
    assigns[:string_message].should equal(mock_message)
  end

end
