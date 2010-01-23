class SampleBuilder
  def self.dealing_with(sample)
    sample.class.sample_type
  end
  
  def self.prepare_one(sample)
    sample.data = random_data_for(sample)
    sample
  end
  
  def self.prepare(how_many, samples)
    (1..how_many).each { |item| samples.send "data_#{item}=", random_data_for(samples) }
    samples
  end
  
  def self.build_random_string(length)
    rnd = ""
    length.times { rnd << rand(10).to_s }
    rnd
  end
  
  def self.build_sample_of(type)
    case type
    when :scalar then prepare_one RemoteScalar.new
    when :string then prepare_one RemoteString.new
    when :big_string then prepare_one RemoteBigString.new
    end
  end
  
  def self.build_some_samples_of(type)
    case type
    when :scalar then prepare 10, RemoteScalarArray.new
    when :string then prepare 10, RemoteStringArray.new
    when :big_string then prepare 10, RemoteBigStringArray.new
    end
  end
  
  def self.build_many_samples_of(type)
    case type
    when :scalar then prepare 100, RemoteScalarBigArray.new
    when :string then prepare 100, RemoteStringBigArray.new
    when :big_string then prepare 100, RemoteBigStringBigArray.new
    end
  end
  
  private
    def self.random_data_for(sample)
      case dealing_with(sample)
      when :scalar then rand 1000
      when :string then build_random_string 25
      when :big_string then build_random_string 255
      end
    end
end