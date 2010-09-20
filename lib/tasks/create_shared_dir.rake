namespace :morph do

  desc "Create a shared directory if it doesn't already exist"
  task :create_shared_dir => :environment do
    raise "You must supply the directory name with dir=<name>" if ENV['dir'].nil? or ENV['dir'].empty?
    directory = "../../shared/mounted_storage/" + ENV['dir']
    begin
      Dir.mkdir directory
      puts "Directory RAILS_ROOT/#{directory} was successfully created."
    rescue
      puts "Directory RAILS_ROOT/#{directory} already exists. Aborting."
    end
  end

end
