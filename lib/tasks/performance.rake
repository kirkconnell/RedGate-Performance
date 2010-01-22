namespace :performance do
  desc "says hello"
  task :greet => :environment do
    puts "Snappy!"
  end
  
  desc "runs everything"
  task :all => [:greet]
end
