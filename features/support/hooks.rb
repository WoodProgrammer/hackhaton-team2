require 'stringio'
require 'logger'

Before do |scenario|
  puts 'Scenario running: ' + scenario.name
end

After do |scenario|
  if scenario.failed?
    puts scenario.exception
    puts scenario.exception.message
    time = Time.now.strftime('%Y%m%d%H%M%S')
    file_path = File.expand_path('output/screenshoot') + '/' + time.to_s + '.png'
    page.save_screenshot file_path
    embed(file_path, 'image/png', 'Scenario_Failed_Screenshot')
    puts 'Scenario failed: ' + scenario.name
  else
    puts 'Scenario succeeded: ' + scenario.name
  end
  Capybara.reset_sessions!
end