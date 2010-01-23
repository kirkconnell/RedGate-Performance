require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SampleBuilder do
  
  describe "preparing samples before building" do
    it "should know if it's dealing with scalars" do
      SampleBuilder.dealing_with(RemoteScalar.new).should == :scalar
      SampleBuilder.dealing_with(RemoteScalarArray.new).should == :scalar
      SampleBuilder.dealing_with(RemoteScalarBigArray.new).should == :scalar
    end
    
    it "should know if it's dealing with strings" do
      SampleBuilder.dealing_with(RemoteString.new).should == :string
      SampleBuilder.dealing_with(RemoteStringArray.new).should == :string
      SampleBuilder.dealing_with(RemoteStringBigArray.new).should == :string
    end
    
    it "should know if it's dealing with big strings" do
      SampleBuilder.dealing_with(RemoteBigString.new).should == :big_string
      SampleBuilder.dealing_with(RemoteBigStringArray.new).should == :big_string
      SampleBuilder.dealing_with(RemoteBigStringBigArray.new).should == :big_string
    end
    
    it "should prepare single scalars" do
      SampleBuilder.prepare_one(RemoteScalar.new).data.should_not be_nil
    end

    it "should prepare ten scalars" do
      sample = SampleBuilder.prepare(10, RemoteScalarArray.new)
      (1..10).each { |item| sample.send("data_#{item}").should_not be_nil }
    end

    it "should prepare a hundred scalars" do
      sample = SampleBuilder.prepare(100, RemoteScalarArray.new)
      (1..100).each { |item| sample.send("data_#{item}").should_not be_nil }
    end
    
    it "should prepare single strings" do
      SampleBuilder.prepare_one(RemoteString.new).data.length.should == 25
    end

    it "should prepare ten strings" do
      sample = SampleBuilder.prepare(10, RemoteStringArray.new)
      (1..10).each { |item| sample.send("data_#{item}").length.should == 25 }
    end

    it "should prepare a hundred strings" do
      sample = SampleBuilder.prepare(100, RemoteStringArray.new)
      (1..100).each { |item| sample.send("data_#{item}").length.should == 25 }
    end
    
    it "should prepare single big strings" do
      SampleBuilder.prepare_one(RemoteBigString.new).data.length.should == 255
    end

    it "should prepare ten big strings" do
      sample = SampleBuilder.prepare(10, RemoteBigStringArray.new)
      (1..10).each { |item| sample.send("data_#{item}").length.should == 255 }
    end

    it "should prepare a hundred big strings" do
      sample = SampleBuilder.prepare(100, RemoteBigStringArray.new)
      (1..100).each { |item| sample.send("data_#{item}").length.should == 255 }
    end
    
  end
  
  describe "building samples" do
    it "should build a scalar sample" do
      SampleBuilder.build_sample_of(:scalar).should be_instance_of(RemoteScalar)
    end

    it "should build a string sample" do
      SampleBuilder.build_sample_of(:string).should be_instance_of(RemoteString)
    end

    it "should build a big string sample" do
      SampleBuilder.build_sample_of(:big_string).should be_instance_of(RemoteBigString)
    end

    it "should build a scalar array sample" do
      SampleBuilder.build_some_samples_of(:scalar).should be_instance_of(RemoteScalarArray)
    end

    it "should build a string array sample" do
      SampleBuilder.build_some_samples_of(:string).should be_instance_of(RemoteStringArray)
    end

    it "should build a big string array sample" do
      SampleBuilder.build_some_samples_of(:big_string).should be_instance_of(RemoteBigStringArray)
    end

    it "should build a scalar big array sample" do
      SampleBuilder.build_many_samples_of(:scalar).should be_instance_of(RemoteScalarBigArray)
    end

    it "should build a string big array sample" do
      SampleBuilder.build_many_samples_of(:string).should be_instance_of(RemoteStringBigArray)
    end

    it "should build a big string big array sample" do
      SampleBuilder.build_many_samples_of(:big_string).should be_instance_of(RemoteBigStringBigArray)
    end
  end
  
end