#Rake::Task["events:ready_for_the_day"].clear
namespace :afternoon do
task :make_cofee => :environment do
  puts "this method is under afternoon name space"
 end

end
