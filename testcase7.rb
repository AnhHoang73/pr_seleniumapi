require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.get'https://itmscoaching.herokuapp.com/form'
#set size for window
driver.manage.window.maximize
puts driver.manage.window.size
sleep 2
#enter the form with folling data
#first_name = driver.find_element(id:'first-name')
first_name = driver.find_element(xpath:" //input[@id='first-name']")
first_name.send_keys("iTMS")
last_name = driver.find_element(id:'last-name')
last_name.send_keys(" Huấn luyện viên")
#
job_title = driver.find_element(id:'job-title')
job_title.send_keys("QA")
#
highest_level = driver.find_element(:id,'radio-button-2')
highest_level.click
#
sex = driver.find_element(id:'checkbox-1')
sex.click
#
options = driver.find_element(id:'select-menu')
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:value,"2")
#
date = driver.find_element(id:'datepicker')
date.send_keys("17/10/2025")
submit = driver.find_element(xpath:"//a[@class='btn btn-lg btn-primary']")
submit.click
sleep 5
driver.quit








