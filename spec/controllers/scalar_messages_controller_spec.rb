require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ScalarMessagesController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(ScalarMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all scalar messages as @scalar_messages" do
    ScalarMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:scalar_messages].should == [mock_message]
  end
  
  it "assigns the requested scalar message as @scalar_message" do
    ScalarMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:scalar_message].should equal(mock_message)
  end

  it "assigns a newly created scalar message as @scalar_message" do
    ScalarMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :scalar_message => {:these => 'params'}
    assigns[:scalar_message].should equal(mock_message)
  end

end
