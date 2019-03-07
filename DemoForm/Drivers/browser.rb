class Browser

  def initialize()
    chromedriver_path = File.join("Drivers", "chromedriver.exe")
    puts chromedriver_path
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path
    @driver = Selenium::WebDriver.for :chrome

  end

  def driver
    return @driver
  end

  def go_to_page(url)
    @driver.navigate.to url
  end

  def get_current_url()
    @driver.current_url
  end

  def maximize_window
    @driver.manage.window.maximize
  end

  def close_browser()
    @driver.quit
  end
end