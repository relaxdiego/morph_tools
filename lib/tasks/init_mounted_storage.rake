desc 'Initialize mounted storage'
namespace :morph do
  task :init_mounted_storage => :environment do
    raise "Must supply directory name with DIRECTORY=<directory_name>" if ENV['DIRECTORY'].nil?
    directory = "../../shared/mounted_storage/" + ENV['DIRECTORY']
    begin
      Dir.mkdir directory
      puts "directory #{directory} was successfully created"
    rescue
      puts "directory #{directory} already exists"
    end
  end
end
