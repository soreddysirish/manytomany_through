namespace :events do
task :turn_off_alarm do
    puts "Turned off alarm. Would have liked 5 more minutes, though."
  end

  task :groom_myself do
    puts "Brushed teeth."
    puts "Showered."
    puts "Shaved."
  end

  task :make_coffee do
    puts "Made 2cups of coffee. Shakes are gone."
  # Rake::Task['afternoon:make_coffee'].invoke
  end

  task :walk_dog do
    puts "Dog walked."
  end

  task :ready_for_the_day => [:turn_off_alarm,:make_coffee, :groom_myself, :walk_dog] do
    puts "Ready for the day!"
  end
end
