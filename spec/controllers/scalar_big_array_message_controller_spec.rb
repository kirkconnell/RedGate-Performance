require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ScalarBigArrayMessageController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(ScalarBigArrayMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all scalar big array messages as @scalar_big_array_messages" do
    ScalarBigArrayMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:scalar_big_array_messages].should == [mock_message]
  end
  
  it "assigns the requested scalar big array message as @scalar_big_array_message" do
    ScalarBigArrayMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:scalar_big_array_message].should equal(mock_message)
  end

  it "assigns a newly created scalar big array message as @scalar_big_array_message" do
    ScalarBigArrayMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :scalar_big_array_message => {:these => 'params'}
    assigns[:scalar_big_array_message].should equal(mock_message)
  end

end
