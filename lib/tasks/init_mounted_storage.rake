namespace :morph do

  desc 'Initialize a directory in the mounted storage'
  task :init_mounted_storage => :environment do
    raise "You must supply the directory name with dir=<name>" if ENV['dir'].nil?
    directory = "../../shared/mounted_storage/" + ENV['dir']
    begin
      Dir.mkdir directory
      puts "Directory #{directory} was successfully created."
    rescue
      puts "Directory #{directory} already exists. Aborting."
    end
  end

end
