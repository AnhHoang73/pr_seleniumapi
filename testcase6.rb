
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize
#find the name element and search with itmscoaching 
search_bar = driver.find_element(name: 'q')
search_bar.send_keys('ITMS Coaching')

puts driver.title

sleep 2
driver.quit