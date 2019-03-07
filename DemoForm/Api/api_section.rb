require "rest-client"

class ApiSection
  @result

  def get_user_details()

    response = RestClient.get 'https://swapi.co/api/people/1/'
    puts response
    @result = JSON.parse(response)

  end

  def get_first_name()
    return @result["name"].split(" ").at(0)

  end

  def get_last_name()
    return @result["name"].split(" ").at(1)
  end
end