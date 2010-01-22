require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe BigStringMessageController do

  def mock_message(stubs={})
    @mock_message ||= mock_model(BigStringMessage, stubs.merge(:to_xml => ""))
  end
  
  it "assigns all big string messages as @big_string_messages" do
    BigStringMessage.stub!(:find).with(:all).and_return([mock_message])
    get :index
    assigns[:big_string_messages].should == [mock_message]
  end
  
  it "assigns the requested big string message as @big_string_message" do
    BigStringMessage.stub!(:find).with("37").and_return(mock_message)
    get :show, :id => "37"
    assigns[:big_string_message].should equal(mock_message)
  end

  it "assigns a newly created big string message as @big_string_message" do
    BigStringMessage.stub!(:new).with({'these' => 'params'}).and_return(mock_message(:save => true))
    post :create, :big_string_message => {:these => 'params'}
    assigns[:big_string_message].should equal(mock_message)
  end

end
