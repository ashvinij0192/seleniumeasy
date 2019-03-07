require "selenium-webdriver"
$URL = "https://www.seleniumeasy.com/test/input-form-demo.html"
class DemoForm
  @driver

  def initialize(browser)
    @browser = browser
    @driver = browser.driver
    browser.go_to_page($URL)
  end

  def first_name(firstName)
    @driver.find_element(:name, 'first_name').send_keys(firstName)
  end

  def last_name(lastName)
    @driver.find_element(:name, 'last_name').send_keys(lastName)
  end

  def email(email)
    @driver.find_element(:name, 'email').send_keys(email)
  end

  def phone_number(phone)
    @driver.find_element(:name, 'phone').send_keys(phone)
  end

  def address(address)
    @driver.find_element(:name, 'address').send_keys(address)
  end

  def city(city)
    @driver.find_element(:name, 'city').send_keys(city)
  end

  def state()
    state = @driver.find_element(:name, 'state')
    option = Selenium::WebDriver::Support::Select.new(state)
    option.select_by(:text, ' Florida')
  end

  def zip_code(zipCode)
    @driver.find_element(:name, 'zip').send_keys(zipCode)
  end

  def website_name(website)
    @driver.find_element(:name, 'website').send_keys(website)
  end

  def radio_button(input)
    puts @driver.find_elements(:name, 'hosting').at(input).click

  end

  def description(description)
    @driver.find_element(:name, 'comment').send_keys(description)
  end

  def click_on_send_button()
    @driver.find_element(:class, 'col-md-4').click
  end

end