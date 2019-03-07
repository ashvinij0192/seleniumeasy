require_relative 'Api/api_section'
require_relative 'PageObject/demo_form'
require_relative 'Drivers/browser'
require_relative 'util/puzzle_section'

@api = ApiSection.new()
@puzzle = PuzzleSection.new()
@browser = Browser.new()
@form = DemoForm.new(@browser)
#maximize window
@browser.maximize_window
#Get user details from REST API
@api.get_user_details
# Enter first name
@form.first_name(@api.get_first_name)
# Enter last name
@form.last_name(@api.get_last_name)
# Enter email id
@form.email('abcd@gmail.com')
# Enter phone number
@form.phone_number(8455551212)
# Enter address details
@form.address('High Street')
# Enter city name
@form.city('Paris')
#Enter state
@form.state
#input zip code
@form.zip_code(123784)
#Enter Website or domain name
@form.website_name(@browser.get_current_url)
# Select hosting option
@form.radio_button(1)
#Enter project description
@form.description(@puzzle.get_even_odd_number([22, 24, 0, 100, 4, 111, 2602, 18]))
@form.description(@puzzle.get_even_odd_number([60, 33, 1719, 25, 19, 13, -21]))
# click on send
@form.click_on_send_button
#close browser
@browser.close_browser

