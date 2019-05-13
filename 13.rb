path = "D:/Ruby/Repoz/27.03/carenty/drivers/chromedriver.exe"
# path =  File.join(File.dirname(__FILE__), "..", "..", "drivers","chromedriver.exe")


Given(/^I open a browser$/) do
  puts "hello1"
   @browser = Selenium::WebDriver.for :chrome, driver_path: path
   url = "https://carenty.ru/login"
   @browser.navigate.to url
end

When(/^I login with user email "([^"]*)" and user password "([^"]*)"$/) do |email, password|
    @browser.find_element(xpath: "//input[@id='user-email-login']").send_keys email
    @browser.find_element(xpath: "//input[@id='user-email-login']").send_keys password
    @browser.find_element(xpath: "/html[1]/body[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/form[1]/button[1]").click
end

Then(/^I verify Practical SQA page loaded$/) do
  puts "hello1"
  @browser.find_element(xpath:"//html/body/div[7]/div[3]/div[10]/div[1]/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div/div[1]/div/div/div[1]/a/h3")
end
puts "hello2"
