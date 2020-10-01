require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.navigate.to('http://google.com') 
#set size for window
driver.manage.window.maximize

puts driver.page_source
sleep 2
driver.quit
