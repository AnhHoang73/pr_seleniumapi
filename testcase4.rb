require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize

puts driver.current_url
sleep 2
driver.quit
