require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ScalarArrayMessagesController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(ScalarArrayMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all big string scalar array messages as @scalar_array_messages" do
    ScalarArrayMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:scalar_array_messages].should == [mock_message]
  end
  
  it "assigns the requested scalar array message as @scalar_array_message" do
    ScalarArrayMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:scalar_array_message].should equal(mock_message)
  end

  it "assigns a newly created scalar array message as @scalar_array_message" do
    ScalarArrayMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :scalar_array_message => {:these => 'params'}
    assigns[:scalar_array_message].should equal(mock_message)
  end

end
