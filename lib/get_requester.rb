# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
attr_accessor :string    

# URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

    def initialize(string)
        @string = URI.parse(string)
    end

    def get_response_body
        @string
        # binding.pry
        response = Net::HTTP.get_response(@string)
        response.body
    end

    def parse_json
        list = JSON.parse(self.get_response_body)
    end


end